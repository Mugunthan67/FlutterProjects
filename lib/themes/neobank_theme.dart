
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_project/themes/themecolors.dart';

class NeoBankTheme {
  ThemeData light() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: bgLight,
      ),
      scaffoldBackgroundColor: bgLight,
      brightness: Brightness.light,
      textTheme: _textThemeLight(),
      primaryColor: white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff0CABDF)),
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) return 4;
            return 0;
          }),
          padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return white.withOpacity(0.2);
            } else if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused)) {
              return white.withOpacity(0.1);
            } else {
              return transparent;
            }
          }),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
      ),
      iconTheme: IconThemeData(color: black),
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: bgLight),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      unselectedWidgetColor: bcheckboxUnselectedLight,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xffE9EEF0),
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
          errorStyle: GoogleFonts.notoSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Colors.red),
          contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 8),
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          labelStyle: const TextStyle(color: Colors.black),
          focusedErrorBorder: InputBorder.none),
      dividerTheme: const DividerThemeData(
        color: Colors.grey,
        thickness: 0.5,
      ),
    );
  }

  TextTheme _textThemeLight() {
    return TextTheme(
      headline1: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: tPrimaryLight),
      headline2: GoogleFonts.heebo(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimaryLight),
      headline3: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: disablecolor),
      bodyText1: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bgLight),
      bodyText2: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimaryLight),
      subtitle1: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: disablecolor),
      subtitle2: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: swhite2),
      caption: GoogleFonts.heebo(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: tPrimaryLight),
      button: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: swhite),
      headline4: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: disablecolor,
      ),
      headline5: GoogleFonts.notoSans(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: bPrimary,
      ),
      headline6: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: disablecolor,
      ),
    );
  }

  ThemeData dark() {
    return ThemeData(
      scaffoldBackgroundColor: bgDark,
      brightness: Brightness.light,
      primaryColor: Color(0xff161618),
      textTheme: _textThemeDark(),
      iconTheme: IconThemeData(color: white),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: bgDark),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff0CABDF)),
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) return 4;
            return 0;
          }),
          padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return white.withOpacity(0.2);
            } else if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused)) {
              return white.withOpacity(0.1);
            } else {
              return transparent;
            }
          }),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      unselectedWidgetColor: bcheckboxUnselectedDark,
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Color(0xff232323),
          filled: true,
          labelStyle: GoogleFonts.notoSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Color(0xff787F89)),
          border: InputBorder.none,
          errorStyle: GoogleFonts.notoSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Colors.red),
          contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 8),
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none),
      dividerTheme: const DividerThemeData(
        color: Colors.grey,
        thickness: 0.5,
      ),
    );
  }

  TextTheme _textThemeDark() {
    return TextTheme(
      headline1: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: tPrimaryDark),
      headline2: GoogleFonts.heebo(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimaryDark),
      headline3: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: tInactive),
      bodyText1: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bgLight),
      bodyText2: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tSecondaryDark),
      subtitle1: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: tSecondaryDark),
      subtitle2: GoogleFonts.notoSans(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: tSecondaryDark),
      caption: GoogleFonts.heebo(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: disablecolor),
      button: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      headline6: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Color(0xffF4F4F4),
      ),
    );
  }
}
