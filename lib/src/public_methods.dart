RegExp _numeric = new RegExp(r'^-?[0-9]+$');

extension PublicMethods on String {
  bool isNullOrEmpty() {
    return this?.isEmpty ?? true;
  }

  bool isNullOrWhiteSpace() {
    return this?.trim()?.isEmpty ?? true;
  }

  bool isNumber() {
    return _numeric.hasMatch(this);
  }
}
