import 'package:test/test.dart';
import '../lib/persian_utils.dart';

void main() {
  group('Public Methods', () {
    test('Test isNumber', () {
      expect(true, '0010350829'.isNumber());
      expect(false, '001a0350829'.isNumber());
    });

    test('Test isNullOrEmpty', () {
      expect(true, ''.isNullOrEmpty());
      expect(false, '1'.isNullOrEmpty());
      expect(false, ' '.isNullOrEmpty());
      expect(false, 'a'.isNullOrEmpty());
    });

    test('Test isNullOrWhiteSpace', () {
      expect(true, ''.isNullOrWhiteSpace());
      expect(true, ' '.isNullOrWhiteSpace());
      expect(false, '1'.isNullOrWhiteSpace());
      expect(false, 'a'.isNullOrWhiteSpace());
    });
  });

  group('Validators', () {
    test('Test isValidIranianNationalCode', () {
      expect(true, '0010350829'.isValidIranianNationalCode());
      expect(true, '0077611616'.isValidIranianNationalCode());
      expect(true, '0081037511'.isValidIranianNationalCode());
      expect(true, '172942284'.isValidIranianNationalCode());
      expect(true, '81037511'.isValidIranianNationalCode());
      expect(true, '1111111111'.isValidIranianNationalCode());
      expect(false, ' 0077611616  '.isValidIranianNationalCode());
      expect(false, ''.isValidIranianNationalCode());
      expect(false, '0254'.isValidIranianNationalCode());
      expect(false, '007-125698-4'.isValidIranianNationalCode());
      expect(true, '7731689956'.isValidIranianNationalCode());
      expect(true, '45768676'.isValidIranianNationalCode());
      expect(true, '15768643'.isValidIranianNationalCode());
      expect(true, '15758648'.isValidIranianNationalCode());
      expect(true, '0013542419'.isValidIranianNationalCode());
      expect(true, '3240175800'.isValidIranianNationalCode());
      expect(true, '3240164175'.isValidIranianNationalCode());
      expect(true, '3370075024'.isValidIranianNationalCode());
      expect(true, '0010532129'.isValidIranianNationalCode());
      expect(true, '0860170470'.isValidIranianNationalCode());

      expect(false, '7731685956'.isValidIranianNationalCode());
      expect(false, 'c9xk9dkd'.isValidIranianNationalCode());
      expect(false, '15758448'.isValidIranianNationalCode());
      expect(false, '324011122'.isValidIranianNationalCode());
      expect(false, '3213213'.isValidIranianNationalCode());
    });

    group('Iran Codes', () {
      test('Test isValidIranianPostalCode', () {
        expect(true, '1619735744'.isValidIranianPostalCode());
        expect(false, '11619735744'.isValidIranianPostalCode());
        expect(false, '0000073574'.isValidIranianPostalCode());
        expect(false, '0200073574'.isValidIranianPostalCode());
        expect(false, '2222273574'.isValidIranianPostalCode());
        expect(false, '1111735744'.isValidIranianPostalCode());
        expect(false, '1961535744'.isValidIranianPostalCode());
      });

      test('Test isValidIranianPhoneNumber', () {
        expect(true, '37236445'.isValidIranianPhoneNumber());
        expect(false, '07236445'.isValidIranianPhoneNumber());
        expect(false, '7236445'.isValidIranianPhoneNumber());
        expect(false, '17236445'.isValidIranianPhoneNumber());
      });

      test('Test isValidIranianMobileNumber', () {
        expect(true, '+989355214655'.isValidIranianMobileNumber());
        expect(true, '989355214655'.isValidIranianMobileNumber());
        expect(true, '00989355214655'.isValidIranianMobileNumber());
        expect(true, '09355214655'.isValidIranianMobileNumber());
        expect(true, '09901464762'.isValidIranianMobileNumber());
        expect(true, '9901464762'.isValidIranianMobileNumber());
        expect(false, '0935521465'.isValidIranianMobileNumber());
      });
    });

    test('Test isValidIranShebaNumber', () {
      expect(true, 'IR820540102680020817909002'.isValidIranShebaNumber());
      expect(true, 'IR062960000000100324200001'.isValidIranShebaNumber());

      expect(false, 'IR01234567890123456789'.isValidIranShebaNumber());
      expect(
          false, 'IR012345678901234567890123456789'.isValidIranShebaNumber());
      expect(false, 'IR01234567890123456789'.isValidIranShebaNumber());
      expect(false, 'IR012345678901234567890123'.isValidIranShebaNumber());
      expect(false, 'IR06296000000010032420000'.isValidIranShebaNumber());
      expect(false, '00062960000000100324200001'.isValidIranShebaNumber());
    });

    test('Test isValidIranShetabNumber', () {
      expect(true, '6221061106498670'.isValidIranShetabNumber());
      expect(true, '636214-1075165358'.isValidIranShetabNumber());
      expect(true, '6274129005473742'.isValidIranShetabNumber());

      expect(false, '6274129107473842'.isValidIranShetabNumber());
      expect(false, '627412900742'.isValidIranShetabNumber());
      expect(false, '62741290054737423252'.isValidIranShetabNumber());
    });

    test('Test isValidIranianNationalLegalCodes', () {
      expect(true, '00103508290'.isValidIranianNationalLegalCode());
      expect(true, '10101780644'.isValidIranianNationalLegalCode());
      expect(true, '10860953980'.isValidIranianNationalLegalCode());
      expect(true, '10340046788'.isValidIranianNationalLegalCode());
      expect(true, '10480020857'.isValidIranianNationalLegalCode());
      expect(false, ' 10480020857  '.isValidIranianNationalLegalCode());
      expect(false, ''.isValidIranianNationalLegalCode());
      expect(false, '0254'.isValidIranianNationalLegalCode());

      expect(true, '14005893875'.isValidIranianNationalLegalCode());
      expect(true, '14006278162'.isValidIranianNationalLegalCode());
      expect(true, '10530125945'.isValidIranianNationalLegalCode());
      expect(true, '10740068759'.isValidIranianNationalLegalCode());
      expect(true, '10320881604'.isValidIranianNationalLegalCode());
      expect(true, '10480059810'.isValidIranianNationalLegalCode());
      expect(true, '10780071570'.isValidIranianNationalLegalCode());
      expect(true, '10780071570'.isValidIranianNationalLegalCode());
      expect(true, '14003552272'.isValidIranianNationalLegalCode());
      expect(true, '10720172838'.isValidIranianNationalLegalCode());

      expect(false, '14006876134'.isValidIranianNationalLegalCode());
      expect(false, 'c25da28w45fa'.isValidIranianNationalLegalCode());
      expect(false, '10740086430'.isValidIranianNationalLegalCode());
      expect(false, '11111111211'.isValidIranianNationalLegalCode());
      expect(false, '10320876496'.isValidIranianNationalLegalCode());
    });
  });

  group('RegExp Utils', () {
    test('Test containsFarsi', () {
      expect(true, 'Abc تست'.containsFarsi());
      expect(true, '،'.containsFarsi());
      expect(true, '٬'.containsFarsi());
      expect(true, '؛'.containsFarsi());
      expect(true, '»'.containsFarsi());
      expect(true, '«'.containsFarsi());
      expect(true, '؟'.containsFarsi());
      expect(true, 'ی'.containsFarsi());
      expect(true, '۹'.containsFarsi());
      expect(true, '؛۹ی'.containsFarsi());
      expect(true, 'aaیaa'.containsFarsi());
      expect(true, 'a۹a'.containsFarsi());
      expect(true, '؛a'.containsFarsi());
      expect(true, 'a؛۹ی'.containsFarsi());

      expect(false, 'this is not rtl'.containsFarsi());
      expect(false, 'this-is-not-rtl'.containsFarsi());
      expect(false, 'this,is,not,rtl'.containsFarsi());
    });

    test('Test containsOnlyPersianNumbers', () {
      expect(true, '۱۲۳'.containsOnlyPersianNumbers());
      expect(true, '۴۵۶۷۸'.containsOnlyPersianNumbers());
      expect(true, '۹۹۹۹۹'.containsOnlyPersianNumbers());

      expect(false, 'ابپ'.containsOnlyPersianNumbers());
      expect(false, 'ا۲بپ'.containsOnlyPersianNumbers());
      expect(false, '1'.containsOnlyPersianNumbers());
      expect(false, '1234'.containsOnlyPersianNumbers());
    });

    test('Test containsOnlyFarsiLetters', () {
      expect(true, 'الب'.containsOnlyFarsiLetters());
      expect(true, 'تثج'.containsOnlyFarsiLetters());
      expect(true, 'چحخدذرز'.containsOnlyFarsiLetters());

      expect(false, 'اaلب'.containsOnlyFarsiLetters());
      expect(false, 'a'.containsOnlyFarsiLetters());
      expect(false, 'ا۲لب'.containsOnlyFarsiLetters());
      expect(false, '۲'.containsOnlyFarsiLetters());
      expect(false, 'this is not rtl'.containsOnlyFarsiLetters());
      expect(false, 'this-is-not-rtl'.containsOnlyFarsiLetters());
      expect(false, 'this,is,not,rtl'.containsOnlyFarsiLetters());
    });
    test('Test containsThinSpace', () {
      expect(true, 'دوست​ها'.containsThinSpace()); // 8203    \u200B
      expect(true, 'دوست‌ها'.containsThinSpace()); // 8204    \u200C
      expect(true, 'دوست‎ها'.containsThinSpace()); // 8206    \u200E
      expect(true, 'دوست‏ها'.containsThinSpace()); // 8207    \u200F

      expect(false, 'دوست ها'.containsThinSpace());
      expect(false, 'دوستها'.containsThinSpace());
    });
  });

  group('Persian Number Utils', () {
    test('Test toPersianNumbers', () {
      expect('۱۲۳', '123'.toPersianNumbers());
      expect('۰۱۲۳۴۵۶۷۸۹', '0123456789'.toPersianNumbers());
    });

    test('Test toEnglishNumbers', () {
      expect('123', '۱۲۳'.toEnglishNumbers());
      expect('0123456789', '۰۱۲۳۴۵۶۷۸۹'.toEnglishNumbers());
    });
  });

  test('Test Correct YeKe', () {
    var actual = '\u0643\u0649\u064A'.applyCorrectYeKe();
    var expected = '\u06A9\u06CC\u06CC';
    expect(expected, actual);
  });
}
