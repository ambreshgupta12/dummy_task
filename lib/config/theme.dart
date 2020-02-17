import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Color(0xff222222);
  static const Color white = Color(0xffFFFFFF);
  static const Color background = Color(0xffF1F1F1);
  static const Color green = Color(0xff41A953);
  static const Color red = Color(0xffDB3730);
  static const Color lightGray = Color(0xffE6E6E6);
  static const Color nobel = Color(0xffa0a0a0);
  static const Color gainsboro = Color(0xffdddddd);


}

class AppSizes {
  static const double button_radius = 34;
  static const double card_radius = 10;
  static const double raisedButtonRadius = 20;
  static const double sidePadding = 8;
  static const double sizeBoxHeight = 14;
  static const double indicatorPadding = 10;
  static const double indicatorHeight = 32;
  static const double bottomMenuIconSize = 24;
  static const double bottomMenuTextSize = 13;

  static const double appBarIconSize = 24;
  static const double tabTitleFontSize = 14;
  static const double titleFontSize = 24;
  static const double cardPadding = 16;
  static const double mediumTextFontSize = 16;
  static const double smallTextFontSize = 10;
  static const double raisedButtonBorderWidth = 1;
  static const double raisedButtonLRPadding = 24;
  static const double raisedButtonTBPadding = 10;
  static const double cardElevation = 2;
  static const double bottomNavigationBarSideRadius = 16;
  static const double appBarElevation = 0;
  static const double progressHeight = 56;
  static const double progressWidth = 56;






}

class AppTheme {
  static ThemeData of(context) {
    ThemeData theme = Theme.of(context);
    return theme.copyWith(

        primaryColor: AppColors.black,
        primaryColorLight: AppColors.nobel,
        accentColor: AppColors.red,
        bottomAppBarColor: AppColors.lightGray,
        backgroundColor: AppColors.background,
        errorColor: AppColors.red,
        appBarTheme: theme.appBarTheme.copyWith(
          color: AppColors.background,
          iconTheme: IconThemeData(color: AppColors.lightGray),
          textTheme: theme.textTheme.copyWith(
              caption: TextStyle(color: AppColors.lightGray, fontSize: 18)),
        ),
        textTheme: theme.textTheme.copyWith(
            headline: theme.textTheme.headline
                .copyWith(fontSize: 28, color: AppColors.white)));
  }
}
