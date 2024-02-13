import 'package:flutter/material.dart';

class AppColors {
  Color primaryLight = const Color(0xFF4F6F52);
  Color secondaryLight = const Color(0xFF739072);
  Color tertieryLight = const Color(0xFF86A789);
  Color backgroudLight = const Color(0xFFD2E3C8);

  Color appBlack = Colors.grey[900]!;
  Color appGrey = Colors.grey[800]!;
  Color appWhite = Colors.grey[100]!;
  Color appDanger = Colors.red[700]!;
  Color appWarning = Colors.orange[700]!;
}

ColorScheme lightColors = ColorScheme.light(
    primary: AppColors().primaryLight,
    inversePrimary: AppColors().appBlack,
    secondary: AppColors().secondaryLight,
    tertiary: AppColors().tertieryLight,
    background: AppColors().backgroudLight,
    onPrimary: AppColors().appWhite,
    onBackground: AppColors().appBlack,
    shadow: AppColors().primaryLight);
