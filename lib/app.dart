import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerpalte/theme/theme.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'base/base_binding.dart';
import 'config/app_theme.dart';
import 'config/scroll_behavior_modified.dart';
import 'helper/hex_color.dart';
import 'localization/local_string.dart';
import 'pages/splash_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initial Bindings
      initialBinding: BaseBinding(),
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
      //theme
      // theme: Themes.light,
      // darkTheme: Themes.dark,
      // themeMode: ThemeMode.light,
      home: SplashPage(),
    );
  }
}
