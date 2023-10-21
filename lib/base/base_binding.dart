import 'package:flutter_getx_boilerpalte/controller/config_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/language_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/menu_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/user_controller.dart';
import 'package:flutter_getx_boilerpalte/services/forground_service.dart';
import 'package:get/get.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigController());
    Get.lazyPut(() => MenuController());
    Get.lazyPut(() => LanguageController());
    Get.lazyPut(() => UserController());

    //services
    Get.lazyPut(() => ForgroundService());
  }
}
