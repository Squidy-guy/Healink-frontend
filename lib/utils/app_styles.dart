import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'app_colors.dart';

class AppStyles {
  static TextStyle greyTextStyle() => GoogleFonts.quicksand(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: kGreyColor);
  static TextStyle darkGreyTextStyle() => GoogleFonts.quicksand(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: kGreyShadeColor);
  static TextStyle primaryTextStyle() => GoogleFonts.quicksand(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: kPrimaryColor);
  static TextStyle whiteTextStyle() => GoogleFonts.quicksand(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: kWhiteColor);
  static TextStyle blackTextStyle() => GoogleFonts.quicksand(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: kBlackTextColor);
  static TextStyle poppinsTextStyle() => GoogleFonts.poppins(
      fontSize: 15.sp, fontWeight: FontWeight.w500, color: kBlackTextColor);

  EdgeInsets get paddingAll24 => EdgeInsets.all(24.0);
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: getWidth(24));
  EdgeInsets get paddingHorizontal15 => EdgeInsets.symmetric(horizontal: getWidth(15));
  EdgeInsets get paddingHabitColumn => EdgeInsets.symmetric(horizontal: getWidth(24),vertical: getHeight(10));
  EdgeInsets get paddingAll15 => EdgeInsets.all(15.0);

  static List<BoxShadow> get buttonShadow => [
    BoxShadow(
      color: kGreyShade2Color.withOpacity(0.1),
      spreadRadius: 0,
      blurRadius: 3,
      offset: Offset(0, 3),
    )
  ];

  static List<BoxShadow> get buttonShadow1 => [
    BoxShadow(
      color: kBlackColor.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 4,
      offset: Offset(0, 4),
    )
  ];
}

double getWidth(double pixelValue) {
  double baseScreenWidth = 393.0;
  return (pixelValue / baseScreenWidth) * 100.w;
}

double getHeight(double pixelValue) {
  double baseScreenHeight = 852.0;
  return (pixelValue / baseScreenHeight) * 100.h;
}
