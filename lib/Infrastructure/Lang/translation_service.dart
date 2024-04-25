import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en.dart';

class TranslationService extends Translations {
  static Locale? get locale =>
      const Locale('en', 'US');
  static Locale fallbackLocale =  const Locale('en', 'US');

  static final langs = [
    'English',
    'Korean',
  ];
  static final locales = [
    const Locale('en', 'US'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
  };

// void changeLocale(String lang) {
//   Get.updateLocale(Locale(lang));
// }


}