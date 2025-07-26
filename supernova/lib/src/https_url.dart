import 'package:freezed_annotation/freezed_annotation.dart';

import 'validation.dart';

part 'https_url.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class HttpsUrl with _$HttpsUrl implements Validatable {
  const factory HttpsUrl(Uri value) = _HttpsUrl;
  const HttpsUrl._();

  factory HttpsUrl.fromJson(String json) => HttpsUrl.parse(json);

  factory HttpsUrl.parse(String url) =>
      tryParse(url) ?? (throw ArgumentError('Invalid URL: `$url`.'));
  static HttpsUrl? parseOrNull(String? url) =>
      url == null ? null : HttpsUrl.parse(url);
  static HttpsUrl? tryParse(String url) {
    if (!url.contains('://')) url = 'https://$url';

    final parsed = Uri.tryParse(url);
    if (parsed == null) return null;

    return HttpsUrl(parsed);
  }

  @override
  ValidationErrors validate() {
    if (value.scheme != 'https') {
      return [const ValidationError.custom('Scheme is not `https`.')];
    }

    // Inspired by https://pub.dev/documentation/validators/3.0.0/validators/isFQDN.html
    final hostParts = value.host.split('.');
    if (hostParts.length < 2) {
      return [const ValidationError.custom("Host doesn't have a TLD.")];
    }

    final tld = hostParts.removeLast();
    if (!RegExp(r'^[a-z]{2,}$').hasMatch(tld)) {
      return [const ValidationError.custom("Host's TLD is invalid.")];
    }

    for (final part in hostParts) {
      if (!RegExp(r'^[a-z\\u00a1-\\uffff0-9-]+$').hasMatch(part) ||
          part.startsWith('-') ||
          part.endsWith('-') ||
          part.contains('---')) {
        return [const ValidationError.custom('Host part is invalid.')];
      }
    }

    return [];
  }

  @override
  String toString() => value.toString();
  String toJson() => value.toString();
}
