import 'package:flutter/material.dart';

import 'constant.dart';

enum AppTheme { Default }

final appThemeData = {
  AppTheme.Default: ThemeData(
    primaryColor: AppColors.primary,
    fontFamily: 'Din Pro',
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
    ),
  ),
};
