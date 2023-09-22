import 'package:event_app/core/constants/env_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ///The app was designed in a light theme mode.
// ///There is no dark theme mode for now.

// /// How to use app colorScheme:
// /// If you are assigning a color property to a widget that has it's color value as a member of the colors in the app theme,
// /// you should assign the color as so => 'color: Theme.of(context).colorScheme.colorNameAccordingToTheme' e.g Theme.of(context).colorScheme.background

// /// How to use app theme:
// /// In your main.dart file, inside the MaterialApp() method, you should assign the theme parameter as so => 'theme: EnvThemeManager.lightTheme

// ///  How to use app textTheme:
// /// If you are assigning a textStyle property to a text widget that has it's style values as a member of the textStyles in the app theme,
/// You should assign the textStyle as so => 'textStyle: Theme.of(context).textStyle.textStyleNameAccordingToTheme' e.g Theme.of(context).colorScheme.bodyLarge

class EnvThemeManager {
  EnvThemeManager._();

  static String get _fontFamily => 'Poppins';
  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static final ColorScheme _lightColorScheme = const ColorScheme.light()
      .copyWith(
          primary: EnvColors.primaryColor,
          secondary: EnvColors.secondaryColor,
          error: EnvColors.errorColor,
          background: EnvColors.lightBackgroundColor,
          inverseSurface: EnvColors.secondaryColor.shade400,
          surface: EnvColors.secondaryTextColor,
          tertiary: EnvColors.green,
          onBackground: EnvColors.infoColor,
          onPrimary: EnvColors.primaryColor.shade100,
          onTertiary: EnvColors.tertiaryColor);

  static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
      scaffoldBackgroundColor: colorScheme.background,
      useMaterial3: false,
      colorScheme: colorScheme,
      textTheme: _textTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      fontFamily: _fontFamily,
      appBarTheme: _appBarTheme(colorScheme),
      disabledColor: colorScheme.inverseSurface,
      brightness: colorScheme.brightness,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.background,
      ));

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        displayLarge: TextStyle(
          fontSize: 96.sp,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          fontSize: 72.sp,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          fontSize: 56.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontSize: 40.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 32.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 28.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 20.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 16.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
      );

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: _iconTheme(colorScheme),
        actionsIconTheme: _iconTheme(colorScheme),
      );

  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onSurface,
      );
}
