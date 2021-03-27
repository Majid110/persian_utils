import '../../src/public_methods.dart';

RegExp _matchIranShetab = RegExp(r'[0-9]{16}', caseSensitive: false);

/// Credit and Debit Card (Shetab) validation
extension IranShetabNumber on String {
  /// validate Shetab card numbers
  bool isValidIranShetabNumber() {
    String s = this;
    if (s.isNullOrEmpty()) {
      return false;
    }

    s = s.replaceAll('-', '').replaceAll(' ', '');

    if (s.length != 16) {
      return false;
    }

    if (!_matchIranShetab.hasMatch(s)) {
      return false;
    }

    var x1 = s
        .split('')
        .where((e) =>
            e.codeUnitAt(0) >= '0'.codeUnitAt(0) &&
            e.codeUnitAt(0) <= '9'.codeUnitAt(0))
        .toList();

    var x2 = x1.reversed.toList();

    var x3 = x2.asMap().entries.map((e) {
      int i = e.key;
      return (e.value.codeUnitAt(0) - 48) * (i % 2 == 0 ? 1 : 2);
    }).toList();

    var x4 = x3.map((e) => e ~/ 10 + e % 10).toList();

    var sumOfDigits = x4.reduce((a, b) => a + b).toInt();

    return sumOfDigits % 10 == 0;
  }
}
