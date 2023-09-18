import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helper/hex_color.dart';

class AppTheme {
  AppTheme._();

  static const appVersion = '1.0.0';

  static Color primaryColor = hexToColor('#78909C');
  static Color appbarColor = hexToColor('#EEF0F6');
  static Color textColor = hexToColor('#41525A');
  static Color white = Colors.white;
  static Color appTextColor2 = Color(0xFF141C44);
  static Color appTextColor1 = Color(0xFF72778F);
  static Color cardColor = Colors.grey[400]!;
  static Color enabledLineColor = Color(0xFFA3CCDC);
  static Color newAppBarTextColor = Color(0xFF434969);
  static Color sidebarTextColor = hexToColor('#2A3050');

  static Color appFooterColor = Color(0xFF78909C);
  static Color focusedLineColor = Color(0xFFF2BA14);
  static Color appHomePageColor = Color(0xFFEFF6FF);
  static Color newAppBarBackgroundColor = Color(0xFFEFF6FF);
  static Color disableColors = Color(0xFFBCC8CE);
  static Color bannerColor1 = hexToColor('#78909C');
  static Color bannerColor2 = hexToColor('#96789C');
  static Color bannerColor3 = hexToColor('#9C8478');
  static Color bannerColor4 = hexToColor('#7E9C78');
  static Color bottmSheetHeader = hexToColor('#5B7A8A');

  //=============================
  static Color backgroundColor = hexToColor('#EFF6FF');
  static Color appBarTextColor = hexToColor('#434969');
  static Color appBarColor = hexToColor('#78909C');
  static Color borderColor = hexToColor('#A3CCDC');
  static Color textColor0 = hexToColor('#5293A6');
  static Color textColor1 = hexToColor('#FFFFFF');
  static Color textColor2 = hexToColor('#000000');
  static Color textColor3 = hexToColor('#C8C8C8');
  static Color textColor4 = hexToColor('#150B3D');
  static Color textColor5 = hexToColor('#8C8D92');
  static Color textColor6 = hexToColor('#434969');
  static Color textColor9 = hexToColor('#8C8D92');
  static Color textColor10 = hexToColor('#F2BA14');
  static Color textColor11 = hexToColor('#D0DBDF');
  static Color textColor12 = hexToColor('#F2BA14');
  static Color textColor13 = hexToColor('#F5F9FC');
  static Color textColor14 = hexToColor('#8DA3AC');
  static Color textColor15 = hexToColor('#434969');
  static Color textColor16 = hexToColor('#E7F4F9');
  static Color textColor17 = hexToColor('#7A27E4');
  static Color textColor18 = hexToColor('#F6FAFC');
  static Color textColor19 = hexToColor('#C8E0EA');
  static Color textColor20 = hexToColor('#72778F');
  static Color textColor21 = hexToColor('#141C44');
  static Color textColor22 = hexToColor('#BDC5C9');
  static Color textColor23 = hexToColor('#647882');
  static Color textColor24 = hexToColor('#FF3123');
  static Color textColor25 = hexToColor('#3AB54A');
  static Color textColor26 = hexToColor('#C2D8E0');
  static Color textColor27 = hexToColor('#232A50');
  static Color textColor28 = hexToColor('#3AB54A');
  static Color textColor29 = hexToColor('#FFFFD88D');
  static Color textColor30 = hexToColor('#121E42');
  static Color textColor31 = hexToColor('#A8D0A8');
  static Color textColor32 = hexToColor('#B9B9B9');
  static Color textColor33 = hexToColor('#85CE85');
  static Color textColor34 = hexToColor('#EFF6FF');
  static Color textColor35 = hexToColor('#EFEFEF');
  static Color textColor36 = hexToColor('#D9D9D9');
  static Color textColor37 = hexToColor('#FFE7F4F9');
  static Color textColor38 = hexToColor('#B3B6C6');
  static Color textColor39 = hexToColor('#CFDEE3');
  static Color textColor40 = hexToColor('#0C7AA4');
  static Color textColor41 = hexToColor('#E9FAF4');
  static Color textColor42 = hexToColor('#524B6B');
  static Color textColor43 = hexToColor('#FF5353');
  static Color textColor44 = hexToColor('#00A5staticEC');

  static Color color1 = hexToColor('#2c3e50');
  static Color backgroundColor1 = hexToColor('#EFF6FF');
  static Color color2 = hexToColor('#FFA133');
  static Color color3 = hexToColor('#8A8D93');
  static Color color4 = hexToColor('#78909C');
  static Color color5 = hexToColor('#EAEAF3');
  static Color color6 = hexToColor('#9BA9staticB3');

  static Color black = Colors.black;

  static final themeData = ThemeData(
    useMaterial3: true,
    backgroundColor: hexToColor('#78909C'),
    applyElevationOverlayColor: false,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    dialogBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: TextStyle(
        color: hexToColor('#e74c3c').withOpacity(.5),
      ),
      // contentPadding: EdgeInsets.symmetric(vertical: 12),
      // border: OutlineInputBorder(
      //   // borderSide: BorderSide.none,
      //   borderRadius: BorderRadius.circular(
      //     10,
      //   ),
      // ),
      enabledBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppTheme.primaryColor, width: .8)),
      focusedBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppTheme.primaryColor, width: .8)),
      errorBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: Colors.red, width: .8)),
      focusedErrorBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppTheme.primaryColor, width: .8)),
      // fillColor: hexToColor('#F2F7FB'),
      // filled: true,
      hintStyle: TextStyle(
        color: hexToColor('#8A8D93'),
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppTheme.appbarColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: textColor,
      ),
      displayMedium: TextStyle(color: textColor),
      displaySmall: TextStyle(color: textColor),
      headlineMedium: TextStyle(color: textColor),
      headlineSmall: TextStyle(color: textColor),
      titleMedium: TextStyle(color: textColor),
      titleSmall: TextStyle(color: textColor),
      labelLarge: TextStyle(color: textColor),
    ),
    iconTheme: IconThemeData(color: Colors.black54),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(), TargetPlatform.iOS: CupertinoPageTransitionsBuilder()},
    ),
    fontFamily: 'Cera Regular',
    primaryTextTheme: TextTheme(
      displayMedium: TextStyle(color: Colors.black54),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.black54,
      selectionColor: Colors.black54,
      selectionHandleColor: Colors.black54,
    ),
  );
}
