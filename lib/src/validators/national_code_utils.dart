import '../../src/public_methods.dart';

extension StringValidating on String {
  bool isValidIranianNationalCode() {
    String s = this;
    if (s.isNullOrEmpty()) {
      return false;
    }

    s = s.padLeft(10, '0');

    const int nationalCodeLength = 10;
    if (s.length != nationalCodeLength) {
      return false;
    }

    if (!s.isNumber()) {
      return false;
    }

    var j = nationalCodeLength;
    var sum = 0;
    for (var i = 0; i < s.length - 1; i++) {
      sum += int.parse(s[i]) * j--;
    }

    var remainder = sum % 11;
    var controlNumber = int.parse(s[9]);
    return remainder < 2 && controlNumber == remainder ||
        remainder >= 2 && controlNumber == 11 - remainder;
  }
}
