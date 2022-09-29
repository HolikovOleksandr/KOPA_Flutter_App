import 'package:get/get.dart';

class LocalStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // ENGLISH
        'en': {
          'unknownPage': 'Unknown page',
          'phoneButton': 'Verify',
          'successful': 'Successful!',
          'failed': 'Error',
          'enter': 'Enter',
          'exed': 'Exid',
          'otpButton': 'Next',
          'phoneHint': '+38',

          // Product strings
          'height': 'Height/sm',
          'width': 'Width/sm',
          'countrySize': 'EU',
          'footSizes': 'Foot size:',
          'material': 'Material:',

          // User page strings
          'location': 'Location',
          'phone': 'Phone number',
          'userName': 'Golikov Oleksandr',
        },

        // UKRAINIAN
        'uk': {
          'unknownPage': 'Невiдома сторiнка',
          'phoneButton': 'Верифiкацiя',
          'successful': 'Успiх!',
          'failed': 'Помилка',
          'enter': 'Вхiд',
          'exed': 'Вийти',
          'otpButton': 'Далi',
          'phoneHint': '+38',

          // Product strings
          'height': 'Довжина/см',
          'width': 'Ширина/см',
          'countrySize': 'EU',
          'footSizes': 'Розмiри стопи:',
          'material': 'Матерiал:',

          // User page strings
          'location': 'Мiсто',
          'phone': 'Контактний номер',
          'userName': 'Голіков Олександр',
        },
      };
}
