import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedLanguage = Get.locale?.languageCode.obs;
  changeLanguage(String lang) {
    // Locale locale = new Locale(lang);
    var locale = Locale(lang);
    Get.updateLocale(locale);
    selectedLanguage?.value = lang;
  }
}
