import '../src/public_methods.dart';

extension PersianNumber on String {
  /// Converts English digits of a given string to their equivalent Persian digits.
  String toPersianNumbers() {
    if (this.isNullOrWhiteSpace()) return '';
    return toEnglishNumbers()
        .replaceAll("0", "\u06F0")
        .replaceAll("1", "\u06F1")
        .replaceAll("2", "\u06F2")
        .replaceAll("3", "\u06F3")
        .replaceAll("4", "\u06F4")
        .replaceAll("5", "\u06F5")
        .replaceAll("6", "\u06F6")
        .replaceAll("7", "\u06F7")
        .replaceAll("8", "\u06F8")
        .replaceAll("9", "\u06F9")
        .replaceAll(".", ",");
  }

  /// Converts Persian and Arabic digits of a given string to their equivalent English digits.
  String toEnglishNumbers() {
    if (this.isNullOrWhiteSpace()) return '';
    return this
            .replaceAll("\u0660", "0") //٠
            .replaceAll("\u06F0", "0") //۰
            .replaceAll("\u0661", "1") //١
            .replaceAll("\u06F1", "1") //۱
            .replaceAll("\u0662", "2") //٢
            .replaceAll("\u06F2", "2") //۲
            .replaceAll("\u0663", "3") //٣
            .replaceAll("\u06F3", "3") //۳
            .replaceAll("\u0664", "4") //٤
            .replaceAll("\u06F4", "4") //۴
            .replaceAll("\u0665", "5") //٥
            .replaceAll("\u06F5", "5") //۵
            .replaceAll("\u0666", "6") //٦
            .replaceAll("\u06F6", "6") //۶
            .replaceAll("\u0667", "7") //٧
            .replaceAll("\u06F7", "7") //۷
            .replaceAll("\u0668", "8") //٨
            .replaceAll("\u06F8", "8") //۸
            .replaceAll("\u0669", "9") //٩
            .replaceAll("\u06F9", "9") //۹
        ;
  }
}
