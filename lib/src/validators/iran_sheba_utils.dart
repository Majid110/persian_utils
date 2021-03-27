import '../../src/public_methods.dart';

RegExp _matchIranSheba = RegExp(r'IR[0-9]{24}', caseSensitive: false);

extension IranShebaNumber on String {
  /// Validate IBAN (International Bank Account Number, Sheba)
  bool isValidIranShebaNumber() {
    if (this.isNullOrEmpty()) {
      return false;
    }

    if (this.length < 4 ||
        this[0] == ' ' ||
        this[1] == ' ' ||
        this[2] == ' ' ||
        this[3] == ' ') {
      return false;
    }

    if (this.length != 26) {
      return false;
    }

    if (!_matchIranSheba.hasMatch(this)) {
      return false;
    }

    var checksum = 0;
    var ibanlength = this.length;
    for (int charIndex = 0; charIndex < ibanlength; charIndex++) {
      if (this[charIndex] == ' ') {
        continue;
      }

      int value;
      var c = this[(charIndex + 4) % ibanlength].codeUnitAt(0);
      if ((c >= '0'.codeUnitAt(0)) && (c <= '9'.codeUnitAt(0))) {
        value = c - '0'.codeUnitAt(0);
      } else if ((c >= 'A'.codeUnitAt(0)) && (c <= 'Z'.codeUnitAt(0))) {
        value = c - 'A'.codeUnitAt(0);
        checksum = ((checksum * 10 + (value / 10 + 1)) % 97).toInt();
        value %= 10;
      } else if ((c >= 'a'.codeUnitAt(0)) && (c <= 'z'.codeUnitAt(0))) {
        value = c - 'a'.codeUnitAt(0);
        checksum = ((checksum * 10 + (value / 10 + 1)) % 97).toInt();
        value %= 10;
      } else {
        return false;
      }

      checksum = (checksum * 10 + value) % 97;
    }
    return checksum == 1;
  }
}
