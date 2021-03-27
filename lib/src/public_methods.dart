RegExp _numeric = RegExp(r'^-?[0-9]+$');

extension PublicMethods on String {
  bool isNullOrEmpty() {
    return this.isEmpty;
  }

  bool isNullOrWhiteSpace() {
    return this.trim().isEmpty;
  }

  bool isNumber() {
    return _numeric.hasMatch(this);
  }
}
