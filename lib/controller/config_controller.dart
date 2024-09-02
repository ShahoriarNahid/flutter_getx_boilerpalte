import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_boilerpalte/helper/route.dart';

import 'package:get/get.dart';

import '../config/app_theme.dart';
import '../pages/main_page.dart';

class ConfigController extends GetxController {
  Future<void> initAppConfig() async {
    //--------------------- End -------------------------

    // Setup App system theme [AppBar & System Navigation]
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppTheme.appbarColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey[50],
      systemNavigationBarColor: Colors.grey[50],
    ));
    // ---------------------------------------------------

    // Set Orientation [default : portrait]
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // ---------------------------------------------------
  }

// Initialize page after default configuration
  void init() async {
    await Future.delayed(Duration(seconds: 1));

    offAll(MainPage());

// ---------------------------------------------------
  }
}
