# persian_utils

![Dart CI](https://github.com/Majid110/persian_utils/workflows/Dart%20CI/badge.svg)

<div dir="rtl">
  
persian_utils کتابخانه‌ای است متشکل از متدهای الحاقی کمکی جهت کار با فرهنگ فارسی، در برنامه‌های مبتنی بر Dart و Flutter.
این کتابخانه ترجمه‌ای از کتابخانه [DNTPersianUtils.Core](https://github.com/VahidN/DNTPersianUtils.Core) به زبان Dart می‌باشد.

</div>

لیست متدها و امکانات این کتابخانه
-----------------

اعتبارسنج‌ها
-----------------


|نام متد/امکانات|مثال|خروجی نمونه|
| -------| :------: | :------: |
| بررسی اعتبار کد ملی | "0010350829".isValidIranianNationalCode() | true |
| بررسی اعتبار کد بانکی شبا | "IR820540102680020817909002".<br>isValidIranShebaNumber() | true |
| بررسی اعتبار کد بانکی شتاب | "6221061106498670".<br>isValidIranShetabNumber() | true |
| بررسی اعتبار شماره موبایل | "09901464762".<br>isValidIranianMobileNumber() | true |
| بررسی اعتبار شماره تلفن | "37236445".<br>isValidIranianPhoneNumber() | true |
| بررسی اعتبار کد پستی | "1619735744".<br>isValidIranianPostalCode() | true |
| بررسی اعتبار اعداد تمام فارسی | "۹۹۹۹۹".<br>containsOnlyPersianNumbers() | true |
| بررسی اعتبار حروف و يا اعداد فارسی بودن تنها قسمتی از متن | "Abc تست".<br>containsFarsi() | true |
| بررسی اعتبار حروف فارسی بودن تمام متن | "تست".<br>containsOnlyFarsiLetters() | true |
| بررسی اعتبار شناسه ملی حقوقی | "14005893875".isValidIranianNationalLegalCode() | true |


قدردانی
-----------------

<div dir="rtl">

تشکر از آقای
 [وحید نصیری](https://github.com/VahidN)
  بابت کتابخانه کامل و مفید 
  [DNTPersianUtils.Core](https://github.com/VahidN/DNTPersianUtils.Core)
  
</div>
