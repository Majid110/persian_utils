import '../lib/persian_utils.dart';

main() {
  // --------- Validators example ---------

  assert('0077611616'.isValidIranianNationalCode());
  assert('1619735744'.isValidIranianPostalCode());

  assert('37236445'.isValidIranianPhoneNumber());

  assert('+989355214655'.isValidIranianMobileNumber());
  assert('989355214655'.isValidIranianMobileNumber());
  assert('00989355214655'.isValidIranianMobileNumber());
  assert('09355214655'.isValidIranianMobileNumber());
  assert('09901464762'.isValidIranianMobileNumber());
  assert('9901464762'.isValidIranianMobileNumber());

  assert('IR820540102680020817909002'.isValidIranShebaNumber());
  assert('IR062960000000100324200001'.isValidIranShebaNumber());

  assert('6221061106498670'.isValidIranShetabNumber());
  assert('636214-1075165358'.isValidIranShetabNumber());

  assert('00103508290'.isValidIranianNationalLegalCode());
  assert('10101780644'.isValidIranianNationalLegalCode());

  assert('0010350829'.isNumber());

  assert(''.isNullOrEmpty());

  assert(' '.isNullOrWhiteSpace());

  // ----------- RegExp Utils example -----------
  assert('Abc تست'.containsFarsi());

  assert('۱۲۳'.containsOnlyPersianNumbers());

  assert('چحخدذرز'.containsOnlyFarsiLetters());

  assert('دوست​ها'.containsThinSpace()); // 8203    \u200B
  assert('دوست‌ها'.containsThinSpace()); // 8204    \u200C
  assert('دوست‎ها'.containsThinSpace()); // 8206    \u200E
  assert('دوست‏ها'.containsThinSpace()); // 8207    \u200F

  // ---------- Converter example ----------
  assert('123'.toPersianNumbers() == '۱۲۳');

  assert('۰۱۲۳۴۵۶۷۸۹'.toEnglishNumbers() == '0123456789');

  assert('يكي'.applyCorrectYeKe() == 'یکی');

  // ------------ Finish -------------
  print('All done.');
}
