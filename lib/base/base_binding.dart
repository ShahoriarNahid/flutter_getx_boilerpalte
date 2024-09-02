
import 'package:flutter_getx_boilerpalte/controller/language_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/menu_controller.dart';
import 'package:get/get.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuController1());
    Get.lazyPut(() => LanguageController());
  }
}
