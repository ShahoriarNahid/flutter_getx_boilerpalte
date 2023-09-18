import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'config/app_theme.dart';
import 'config/scroll_behavior_modified.dart';
import 'helper/hex_color.dart';
import 'localization/local_string.dart';
import 'pages/splash_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: AppTranslation.translationsKeys,

      ///  locale: Get.deviceLocale,
      fallbackLocale: Locale('bn', 'BD'),
      locale: Locale('bn', 'BD'),
      defaultTransition: Transition.fade,
      color: hexToColor('#78909C'),
      builder: (context, widget) => ScrollConfiguration(
        behavior: ScrollBehaviorModified(),
        child: widget!,
      ),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: SplashPage(),
    );
  }
}
