import '../src/public_methods.dart';

/// Arabic Ke Char \u0643 = ARABIC LETTER KAF
final int arabicKeChar = 1603;

/// Arabic Ye Char \u0649 = ARABIC LETTER ALEF MAKSURA
final int arabicYeChar1 = 1609;

/// Arabic Ye Char \u064A = ARABIC LETTER YEH
final int arabicYeChar2 = 1610;

/// ؠ
final int arabicYeWithOneDotBelow = 1568;

/// ئ
final int arabicYeWithHighHamze = 1574;

/// ؽ
final int arabicYeWithInvertedV = 1597;

/// ؾ
final int arabicYeWithTwoDotsAbove = 1598;

/// ؿ
final int arabicYeWithThreeDotsAbove = 1599;

/// ٸ
final int arabicYeWithHighHamzeYeh = 1656;

/// ې
final int arabicYeWithFinalForm = 1744;

/// ۑ
final int arabicYeWithThreeDotsBelow = 1745;

/// ۍ
final int arabicYeWithTail = 1741;

/// ێ
final int arabicYeSmallV = 1742;

/// Persian Ke Char \u06A9 = ARABIC LETTER KEHEH
final int persianKeChar = 1705;

/// Persian Ye Char \u06CC = 'ARABIC LETTER FARSI YEH
final int persianYeChar = 1740;

extension YeKe on String {
  /// Fixes common writing mistakes caused by using a bad keyboard layout,
  /// such as replacing Arabic Ye with Persian one and so on ...
  String applyCorrectYeKe() {
    return this.isNullOrWhiteSpace()
        ? ''
        : this
            .replaceAll(String.fromCharCode(arabicYeChar1),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeChar2),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithOneDotBelow),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithHighHamze),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithInvertedV),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithTwoDotsAbove),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithThreeDotsAbove),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithHighHamzeYeh),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithFinalForm),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithThreeDotsBelow),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeWithTail),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicYeSmallV),
                String.fromCharCode(persianYeChar))
            .replaceAll(String.fromCharCode(arabicKeChar),
                String.fromCharCode(persianKeChar))
            .trim();
  }
}
