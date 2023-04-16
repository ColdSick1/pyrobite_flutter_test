import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

final customThemeData = ThemeData(
  canvasColor: DesignColors.canvasColor,
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: DesignColors.greyText,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: DesignColors.primaryDarkColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 24,
      color: DesignColors.primaryDarkColor,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      color: DesignColors.primaryBlue,
    ),
    displayMedium: TextStyle(
      fontSize: 14,
      color: DesignColors.greyText,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: DesignColors.primaryDarkColor,
    ),
    displayLarge: TextStyle(
      fontSize: 16,
      color: DesignColors.primaryDarkColor,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: DesignColors.primaryDarkColor,
      fontWeight: FontWeight.w300,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      color: DesignColors.greyText,
      fontWeight: FontWeight.w300,
    ),
  ),
);
