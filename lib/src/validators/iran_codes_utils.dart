import '../../src/public_methods.dart';

RegExp _matchIranianMobileNumber1 =
    RegExp(r'^(((98)|(\+98)|(0098)|0)(9){1}[0-9]{9})+$', caseSensitive: false);
RegExp _matchIranianMobileNumber2 =
    RegExp(r'^(9){1}[0-9]{9}$', caseSensitive: false);
RegExp _matchIranianPhoneNumber =
    RegExp(r'^[2-9][0-9]{7}$', caseSensitive: false);
RegExp _matchIranianPostalCode = RegExp(
    r'\b(?!(\d)\1{3})[13-9]{4}[1346-9][013-9]{5}\b',
    caseSensitive: false);

/// IranCodes Utils
extension IranianMobileNumber on String {
  /// Validate Iranian mobile number
  bool isValidIranianMobileNumber() {
    return !this.isNullOrWhiteSpace() &&
        (_matchIranianMobileNumber1.hasMatch(this) ||
            _matchIranianMobileNumber2.hasMatch(this));
  }

  /// Validate Iranian phone number
  bool isValidIranianPhoneNumber() {
    return !this.isNullOrWhiteSpace() &&
        _matchIranianPhoneNumber.hasMatch(this);
  }

  /// Validate Iranian postal code
  bool isValidIranianPostalCode() {
    return !this.isNullOrWhiteSpace() && _matchIranianPostalCode.hasMatch(this);
  }
}
