import 'package:flutter/material.dart';
import 'package:krok_app/resources/resources.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      primaryColor: AppColors.kPrimaryColor,
      scaffoldBackgroundColor: AppColors.kScaffoldBackgroundColor,
      primaryColorDark: AppColors.kGreyColor,
      primaryColorLight: AppColors.kPrimaryColor,
      dividerTheme: DividerThemeData(
        color: AppColors.kGreyColor.withOpacity(0.4),
      ),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
        color: AppColors.kBlackColor,
      )),
      iconTheme: const IconThemeData(
        color: AppColors.kScaffoldBackgroundColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.kScaffoldBackgroundColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.kScaffoldBackgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(
            color: AppColors.kErrorColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(
            color: AppColors.kErrorColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
          ),
        ),
      ),
      canvasColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      colorScheme: ColorScheme.fromSwatch(
        errorColor: AppColors.kErrorColor,
        backgroundColor: AppColors.kRedAccentColor,
      ),
    );
  }

  }