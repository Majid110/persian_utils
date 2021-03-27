import '../src/public_methods.dart';

RegExp _matchAllTags = RegExp(r'<(.|\n)*?>', caseSensitive: false);

RegExp _matchArabicHebrew =
    RegExp(r'[\u0600-\u06FF,\u0590-\u05FF,«,»]', caseSensitive: false);

RegExp _matchOnlyPersianNumbersRange =
    RegExp(r'^[\u06F0-\u06F9]+$', caseSensitive: false);

RegExp _matchOnlyPersianLetters = RegExp(
    r'^[\\s,\u06A9\u06AF\u06C0\u06CC\u060C,\u062A\u062B\u062C\u062D\u062E\u062F,\u063A\u064A\u064B\u064C\u064D\u064E,\u064F\u067E\u0670\u0686\u0698\u200C,\u0621-\u0629\u0630-\u0639\u0641-\u0654]+$',
    caseSensitive: false);

RegExp _hasHalfSpaces =
    RegExp(r'\u200B|\u200C|\u200E|\u200F', caseSensitive: false);

/// متدهای کمکی مبتنی بر عبارات باقاعده
extension ReExpUtils on String {
  /// آیا عبارت مدنظر حاوی حروف و اعداد فارسی است؟
  bool containsFarsi() {
    return !this.isNullOrEmpty() &&
        _matchArabicHebrew.hasMatch(stripHtmlTags().replaceAll(',', ''));
  }

  /// آیا عبارت مدنظر فقط حاوی حروف فارسی است؟
  bool containsOnlyFarsiLetters() {
    return !this.isNullOrEmpty() &&
        _matchOnlyPersianLetters.hasMatch(stripHtmlTags().replaceAll(',', ''));
  }

  /// حذف تگ‌های یک عبارت
  String stripHtmlTags() {
    return this.isNullOrEmpty()
        ? ''
        : this.replaceAll(_matchAllTags, ' ').replaceAll('&nbsp;', ' ');
  }

  /// آیا عبارت مدنظر فقط حاوی اعداد فارسی است؟
  bool containsOnlyPersianNumbers() {
    return !this.isNullOrEmpty() &&
        _matchOnlyPersianNumbersRange.hasMatch(stripHtmlTags());
  }

  /// آیا عبارت مدنظر شامل نیم فاصله است؟
  bool containsHalfSpace() => _hasHalfSpaces.hasMatch(this);
  //=> text.Contains((char) 8203) || text.Contains((char) 8204) ||
  //   text.Contains((char) 8206) || text.Contains((char) 8207);

  /// آیا عبارت مدنظر شامل نیم فاصله است؟
  bool containsThinSpace() => containsHalfSpace();
}
