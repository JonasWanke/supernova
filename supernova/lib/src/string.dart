import 'package:dartx/dartx.dart';

extension StringSupernova on String {
  String? get emptyToNull => isEmpty ? null : this;
  String? get blankToNull => isBlank ? null : this;

  /// https://www.unicode.org/versions/Unicode14.0.0/ch05.pdf#page=16
  static final anyNewlineCharacterRegExp = RegExp(
    '\r\n|\n|\u{0b}|\f|\r|\u{85}|\u{2028}|\u{2029}',
  );
  bool get isSingleLine => !anyNewlineCharacterRegExp.hasMatch(this);

  String limitWithEllipsis(int limit) {
    // Shortcut to avoid having to traverse individual human-perceived
    // characters (grapheme clusters) of the string. This works because each
    // character uses one or more code units, so `length` is an upper bound to
    // the number of characters.
    if (length <= limit) return this;

    // Calculating the number of characters of a string is an operation with
    // linear time. For a string with a length of multiple kilobytes and a
    // `limit` of 10, this method only needs to traverse 11 characters instead
    // of the whole string.
    //
    // We have to take one more character than `limit`: If the resulting
    // `substring.length` is `limit` or less, the string was shorter than the
    // limit. Otherwise, `substring.length` is equal to `limit + 1` and the
    // original string is longer, meaning we have to add the ellipsis (`end`).
    //
    // (`substring.length` calls `Characters.length`, i.e., gets the length of
    // the `Characters` iterable, so it counts human-perceived characters and
    // not code units.)
    final substring = characters.take(limit + 1);
    if (substring.length <= limit) return this;
    assert(substring.length == limit + 1);

    // Finally, we can remove the additional character, make space for the
    // ellipsis, and append it.
    return '${substring.skipLast(2)}…';
  }

  // Modified from https://github.com/felixblaschke/supercharged/blob/bc3df51eee84aa933c642ccf92bf7cec4990341c/supercharged_dart/lib/string/string.dart#L69-L89
  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allAfter('=');                 // '1'
  /// 'i like turtles'.allAfter('like')        // ' turtles'
  /// 'i   like cats'.allAfter(RegExp('\\s+')) // 'like cats'
  /// ```
  String allAfter(Pattern pattern) {
    final matchIterator = pattern.allMatches(this).iterator;
    if (matchIterator.moveNext()) return substring(matchIterator.current.end);
    return '';
  }

  // Modified from https://github.com/felixblaschke/supercharged/blob/bc3df51eee84aa933c642ccf92bf7cec4990341c/supercharged_dart/lib/string/string.dart#L91-L113
  /// Searches the string for the last occurrence of a [pattern] and returns
  /// everything before that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allBefore('=');          // 'value'
  /// 'i like turtles'.allBefore('like') // 'i '
  /// ```
  String allBefore(Pattern pattern) {
    final matchIterator = pattern.allMatches(this).iterator;

    Match? match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) return substring(0, match.start);
    return '';
  }

  String replaceExactlyOnce(String original, String replacement) {
    final index = indexOf(original);
    if (index.isNegative) {
      throw Exception('Failed to find `$original` in this string.');
    }

    return replaceRange(index, index + original.length, replacement);
  }
}
