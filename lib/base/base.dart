import 'package:flutter_getx_boilerpalte/controller/config_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/language_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/menu_controller.dart';
import 'package:flutter_getx_boilerpalte/controller/user_controller.dart';
import 'package:get/get.dart';

import '../services/forground_service.dart';

class Base {
  Base._();
  // Controller
  static final configController = Get.find<ConfigController>();
  static final menuController = Get.find<MenuController>();
  static final languageController = Get.find<LanguageController>();
  static final userController = Get.find<UserController>();

  // Services
  static final forgroundService = Get.find<ForgroundService>();
}
