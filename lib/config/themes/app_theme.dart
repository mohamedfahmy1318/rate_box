import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/extensions/material_color_extension.dart';
import '../res/app_sizes.dart';
import '../res/color_manager.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      splashColor: Colors.transparent, // إلغاء تأثير الـ splash
      highlightColor: Colors.transparent, // إلغاء تأثير الـ tap/hover
      primarySwatch: AppColors.primary.toMaterialColor(),
      primaryColor: AppColors.primary,
      useMaterial3: true,
      bottomSheetTheme: const BottomSheetThemeData(
        modalBackgroundColor: AppColors.white,
        surfaceTintColor: Colors.transparent,
      ),
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0.0,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.grey,
        unselectedItemColor: AppColors.scaffoldBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.pW4),
          foregroundColor: AppColors.primary,
          minimumSize: Size(AppSize.sW30, AppSize.sH30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.sH0),
          ),
        ),
      ),
      dialogTheme: const DialogThemeData(surfaceTintColor: Colors.transparent),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withValues(alpha: 0.2),
        selectionHandleColor: AppColors.primary,
      ),
      appBarTheme: const AppBarTheme(foregroundColor: AppColors.white),
      iconTheme: const IconThemeData(color: AppColors.white),
      inputDecorationTheme: const InputDecorationTheme(
        prefixIconColor: AppColors.border,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        TextTheme(
          // This Style For AppBar Text
          headlineLarge: TextStyle(
            fontSize: FontSize.s18,
            color: AppColors.secondary,
            fontWeight: FontWeightManager.medium,
          ),
          // This Style For Normal Text With PrimaryColor
          titleLarge: TextStyle(
            fontSize: FontSize.s13,
            color: AppColors.primary,
          ),
          // This Style For Normal Text With SecondryColor
          titleMedium: TextStyle(
            fontSize: FontSize.s13,
            color: AppColors.primary,
          ),
          // This Style For Normal Text With ThirdColor
          titleSmall: TextStyle(
            fontSize: FontSize.s13,
            color: AppColors.primary,
          ),
          // This Style For Hint Text
          bodySmall: TextStyle(
            fontSize: FontSize.s8,
            color: AppColors.hintText,
          ),
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      primarySwatch: AppColorsWithDarkMode.primary.toMaterialColor(),
      primaryColor: AppColorsWithDarkMode.primary,
      useMaterial3: true,
      bottomSheetTheme: const BottomSheetThemeData(
        modalBackgroundColor: AppColorsWithDarkMode.white,
      ),
      scaffoldBackgroundColor: AppColorsWithDarkMode.border,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColorsWithDarkMode.white,
        selectedItemColor: AppColorsWithDarkMode.primary,
        unselectedItemColor: AppColorsWithDarkMode.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.pW4),
          foregroundColor: AppColorsWithDarkMode.primary,
          minimumSize: Size(AppSize.sW30, AppSize.sH30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.sH0),
          ),
        ),
      ),
      dialogTheme: const DialogThemeData(surfaceTintColor: Colors.transparent),
      appBarTheme: const AppBarTheme(
        foregroundColor: AppColorsWithDarkMode.white,
      ),
      iconTheme: const IconThemeData(color: AppColorsWithDarkMode.white),
      inputDecorationTheme: const InputDecorationTheme(
        prefixIconColor: AppColorsWithDarkMode.border,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        TextTheme(
          // This Style For AppBar Text
          headlineLarge: TextStyle(
            fontSize: FontSize.s18,
            color: AppColors.secondary,
            fontWeight: FontWeightManager.medium,
          ),
          // This Style For Normal Text With PrimaryColor
          titleLarge: TextStyle(
            fontSize: FontSize.s13,
            color: AppColors.primary,
          ),
          // This Style For Normal Text With SecondryColor
          titleMedium: TextStyle(
            fontSize: FontSize.s13,
            color: AppColors.primary,
          ),
          // This Style For Normal Text With ThirdColor
          titleSmall: TextStyle(
            fontSize: FontSize.s13,
            color: AppColors.primary,
          ),
          // This Style For Hint Text
          bodySmall: TextStyle(
            fontSize: FontSize.s8,
            color: AppColors.hintText,
          ),
        ),
      ),
    );
  }
}
