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
}

double getWidth(double pixelValue) {
  double baseScreenWidth = 393.0;
  return (pixelValue / baseScreenWidth) * 100.w;
}

double getHeight(double pixelValue) {
  double baseScreenHeight = 852.0;
  return (pixelValue / baseScreenHeight) * 100.h;
}
