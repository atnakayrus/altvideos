import 'package:altvideos/constants/colors.dart';
import 'package:altvideos/constants/themes/typography.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    colorScheme: lightColors,
    useMaterial3: true,
    appBarTheme: appBarTheme,
    textTheme: appTextTheme,
    cardColor: AppColors().tertieryLight,
    canvasColor: AppColors().secondaryLight,
    drawerTheme: drawerTheme);

AppBarTheme appBarTheme = AppBarTheme(
  centerTitle: true,
  elevation: 5,
  foregroundColor: AppColors().appWhite,
  backgroundColor: AppColors().primaryLight,
  shadowColor: AppColors().primaryLight,
  toolbarHeight: 64,
);

DrawerThemeData drawerTheme = DrawerThemeData(
  backgroundColor: AppColors().secondaryLight,
);
