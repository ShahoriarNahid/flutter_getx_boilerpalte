import 'package:flutter/material.dart';
import 'color_resources.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
      cardColor: ColorResources.surface_color_light,
      scaffoldBackgroundColor: ColorResources.background_color_light,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorResources.background_color_light,
      ),
      // textTheme: TextTheme(
      //   bodyLarge: GoogleFonts.montserrat(
      //     decoration: TextDecoration.none,
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.w600,
      //     color: ColorResources.text_color_light,
      //   ),
      //   labelLarge: TextStyle(
      //     color: ColorResources.text_color_light,
      //     fontSize: 18.sp,
      //   ),
      //   displayMedium: TextStyle(
      //     color: Colors.black,
      //     fontSize: 22.sp,
      //   ),
      // ),

      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xFF20AF24),
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme.light(
        background: ColorResources.background_color_light,
        brightness: Brightness.light,
        onPrimary: ColorResources.background_color_light,
        primary: ColorResources.primary_color_light,
        inversePrimary: ColorResources.inversePrimary_color_light,
        secondary: ColorResources.secondary_color_light,
        onSurface: ColorResources.primary_color_light,
        outline: ColorResources.surface_color_light,
        surface: ColorResources.surface_color_light,
        inverseSurface: ColorResources.outline_color_light,
      ).copyWith(background: ColorResources.text_color_light),
      bottomAppBarTheme: const BottomAppBarTheme(color: Colors.cyan),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: ColorResources.outline_color_light,
      ));

  static final dark = ThemeData.dark().copyWith(
      cardColor: ColorResources.surface_color_dark,
      scaffoldBackgroundColor: ColorResources.background_color_dark,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorResources.background_color_dark,
      ),
      // textTheme: TextTheme(
      //   bodyLarge: GoogleFonts.montserrat(
      //     textStyle: const TextStyle(
      //       color: ColorResources.text_color_dark,
      //     ),
      //     decoration: TextDecoration.none,
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.w600,
      //   ),
      //   labelLarge: TextStyle(
      //     color: Colors.white,
      //     fontSize: 18.sp,
      //   ),
      //   displayMedium: TextStyle(
      //     color: Colors.white,
      //     fontSize: 22.sp,
      //   ),
      // ),

      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xFF20AF24),
        textTheme: ButtonTextTheme.primary,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(color: Colors.cyan),
      colorScheme: const ColorScheme.dark(
        background: ColorResources.background_color_dark,
        brightness: Brightness.dark,
        onPrimary: ColorResources.background_color_dark,
        primary: ColorResources.primary_color_dark,
        inversePrimary: ColorResources.inversePrimary_color_dark,
        secondary: ColorResources.secondary_color_dark,
        outline: ColorResources.outline_color_dark,
        surface: ColorResources.surface_color_dark,
        onSurface: ColorResources.text_color_dark,
        inverseSurface: ColorResources.outline_color_dark,
      ).copyWith(background: ColorResources.text_color_dark),
      inputDecorationTheme: InputDecorationTheme(fillColor: ColorResources.outline_color_dark));
}
