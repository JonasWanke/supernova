import 'package:collection/collection.dart';
import 'package:intl/locale.dart';
import 'package:meta/meta.dart';

import 'iterable.dart';

@immutable
class L10nString {
  const L10nString(this.values) : assert(values.length > 0);
  factory L10nString.from({String? de, String? en}) {
    final entries = {'de': de, 'en': en}
        .entries
        .where((it) => it.value != null)
        .map(
          (it) => MapEntry(Locale.fromSubtags(languageCode: it.key), it.value!),
        )
        .toMap();
    return L10nString(entries);
  }

  final Map<Locale, String> values;

  String getValue(Locale locale) {
    // Exact match
    return values[locale] ??
        // Language-only match (potentially different region or script)
        values[Locale.fromSubtags(languageCode: locale.languageCode)] ??
        // Any match with same language
        values.entries
            .firstWhereOrNull(
              (it) => it.key.languageCode == locale.languageCode,
            )
            ?.value ??
        // English
        values[Locale.fromSubtags(languageCode: 'en')] ??
        // Anything
        values.values.first;
  }

  @override
  int get hashCode => const DeepCollectionEquality.unordered().hash(values);
  @override
  bool operator ==(Object other) {
    return other is L10nString &&
        const DeepCollectionEquality.unordered().equals(other.values, values);
  }
}
