import '../../src/public_methods.dart';

/// Validate IR National Legal Code
extension IranianNationalLegalCode on String {
  /// Validate IR National Legal Code
  /// شناسه ملی حقوقی
  bool isValidIranianNationalLegalCode() {
    String s = this;
    if (s.isNullOrWhiteSpace()) {
      return false;
    }

    s = s.padLeft(11, '0');
    const int nationalLegalCodeLength = 11;

    if (s.length != nationalLegalCodeLength) {
      return false;
    }

    if (!s.isNumber()) {
      return false;
    }

    int beforeControlNumber = int.parse(s[9]) + 2;
    var coefficientStatic = [29, 27, 23, 19, 17, 29, 27, 23, 19, 17];

    var sum = 0;
    for (var i = 0; i < s.length - 1; i++) {
      sum += (int.parse(s[i]) + beforeControlNumber) * coefficientStatic[i];
    }

    var remainder = sum % 11;
    var controlNumber = int.parse(s[10]);
    remainder = remainder == 10 ? 0 : remainder;

    return controlNumber == remainder;
  }
}
