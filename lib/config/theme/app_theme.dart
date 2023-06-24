import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kColorPrimary = Color(0xffE56A36);
const Color kColorLightPrimary = Color(0xffFFEAE0);
const Color kColorDark = Color(0xff202020);
const Color kColorDarkTeal = Color(0xff2A4357);

const Color kColorWhite = Color(0xffffffff);
const Color kColorBlack = Color(0xff000000);
const Color kColorGray = Color(0xffb2b2b2);
const Color kColorDivider = Color(0xffe5e5e5);
const Color kColorRed = Colors.red;
const Color kColorOrange = Colors.orange;
const Color kColorGreen = Colors.green;
const Color kColorBlue = Colors.blue;

class AppTheme {
  // dark theme
  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        primaryColor: kColorPrimary,
        brightness: Brightness.dark,
        indicatorColor: kColorPrimary,
        textTheme: _darkTextTheme,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: kColorPrimary),
        appBarTheme: AppBarTheme(
          centerTitle: false,
          elevation: 0,
          titleTextStyle: _titleLarge.copyWith(color: kColorWhite),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: _bodyMedium,
          ),
        ),
      );

  // light theme
  static ThemeData get lightTheme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: kColorWhite,
        primaryColor: kColorPrimary,
        brightness: Brightness.light,
        indicatorColor: kColorPrimary,
        textTheme: _lightTextTheme,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: kColorPrimary),
        appBarTheme: AppBarTheme(
          centerTitle: false,
          elevation: 0,
          backgroundColor: kColorWhite,
          titleTextStyle: _titleLarge.copyWith(color: kColorBlack),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: _bodyMedium,
          ),
        ),
      );

  // dark text theme
  static final TextTheme _darkTextTheme = TextTheme(
    bodyLarge: _bodyLarge.copyWith(color: kColorWhite),
    bodyMedium: _bodyMedium.copyWith(color: kColorWhite),
    bodySmall: _bodySmall.copyWith(color: kColorWhite),
    headlineLarge: _headlineLarge.copyWith(color: kColorWhite),
    headlineMedium: _headlineMedium.copyWith(color: kColorWhite),
    headlineSmall: _headlineSmall.copyWith(color: kColorWhite),
    displayLarge: _displayLarge.copyWith(color: kColorWhite),
    displayMedium: _displayMedium.copyWith(color: kColorWhite),
    displaySmall: _displaySmall.copyWith(color: kColorWhite),
    titleLarge: _titleLarge.copyWith(color: kColorWhite),
    titleMedium: _titleMedium.copyWith(color: kColorWhite),
    titleSmall: _titleSmall.copyWith(color: kColorWhite),
    labelLarge: _labelLarge.copyWith(color: kColorWhite),
    labelMedium: _labelMedium.copyWith(color: kColorWhite),
    labelSmall: _labelSmall.copyWith(color: kColorWhite),
  );

  // light text theme
  static final TextTheme _lightTextTheme = TextTheme(
    bodyLarge: _bodyLarge,
    bodyMedium: _bodyMedium,
    bodySmall: _bodySmall,
    headlineLarge: _headlineLarge,
    headlineMedium: _headlineMedium,
    headlineSmall: _headlineSmall,
    displayLarge: _displayLarge,
    displayMedium: _displayMedium,
    displaySmall: _displaySmall,
    titleLarge: _titleLarge,
    titleMedium: _titleMedium,
    titleSmall: _titleSmall,
    labelLarge: _labelLarge,
    labelMedium: _labelMedium,
    labelSmall: _labelSmall,
  );

  // text styles
  static final TextStyle _headlineLarge = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _headlineMedium = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _headlineSmall = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _displayLarge = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _displayMedium = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _displaySmall = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _bodyLarge = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _bodyMedium = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _bodySmall = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _titleLarge = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _titleMedium = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _titleSmall = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _labelLarge = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _labelMedium = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _labelSmall = GoogleFonts.roboto(
    color: kColorBlack,
    fontSize: 8,
    fontWeight: FontWeight.w400,
  );
}
