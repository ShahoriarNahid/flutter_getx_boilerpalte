import 'package:flutter_getx_boilerpalte/controller/language_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/menu_controller.dart';
import 'package:get/get.dart';

class Base {
  static final menuC = Get.find<MenuController1>();
  static final languageC = Get.find<LanguageController>();
}
