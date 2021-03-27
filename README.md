# persian_utils

![Dart CI](https://github.com/Majid110/persian_utils/workflows/Dart%20CI/badge.svg)

persian_utils contains extension methods and validators for working with Persian texts.
This package is a translation of .Net library [DNTPersianUtils.Core](https://github.com/VahidN/DNTPersianUtils.Core) in Dart.

</div>

## Method list

## Validators

| Method Name                            |                          Example                          | Output |
| -------------------------------------- | :-------------------------------------------------------: | :----: |
| Iranian National Code Validator        |         "0010350829".isValidIranianNationalCode()         |  true  |
| Sheba Number Validator                 | "IR820540102680020817909002".<br>isValidIranShebaNumber() |  true  |
| Shetab Number Validator                |     "6221061106498670".<br>isValidIranShetabNumber()      |  true  |
| Iranian Mobile Number Validator        |      "09901464762".<br>isValidIranianMobileNumber()       |  true  |
| Iranian Phone Number Validator         |        "37236445".<br>isValidIranianPhoneNumber()         |  true  |
| Iranian Postal Code Validator          |        "1619735744".<br>isValidIranianPostalCode()        |  true  |
| Persian Number Checker                 |         "۹۹۹۹۹".<br>containsOnlyPersianNumbers()          |  true  |
| Check Text Contains Farsi              |               "Abc تست".<br>containsFarsi()               |  true  |
| Check Text Contains Only Farsi Letters |           "تست".<br>containsOnlyFarsiLetters()            |  true  |
| Iranian National Legal Code Validator  |      "14005893875".isValidIranianNationalLegalCode()      |  true  |

## Acknowledgment

Very thanks to
[Vahid Nasiri](https://github.com/VahidN)
for his useful library
[DNTPersianUtils.Core](https://github.com/VahidN/DNTPersianUtils.Core)
