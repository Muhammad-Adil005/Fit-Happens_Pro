import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {
  static TextStyle buttonTextStyle() => GoogleFonts.montserrat(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: kWhiteTextColor);
  static TextStyle whiteTextStyle() => GoogleFonts.openSans(
      fontSize: 14.sp, fontWeight: FontWeight.w600, color: kWhiteTextColor);
  static TextStyle opacityTextStyle({required double opacity}) =>
      GoogleFonts.openSans(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white.withOpacity(opacity),
      );
  static TextStyle greenTextStyle() => GoogleFonts.openSans(
      fontSize: 14.sp, fontWeight: FontWeight.w700, color: kGreenTextColor);
  static TextStyle orangeTextStyle() => GoogleFonts.openSans(
      fontSize: 14.sp, fontWeight: FontWeight.w700, color: kOrangeTextColor);
  static TextStyle redTextStyle() => GoogleFonts.openSans(
      fontSize: 14.sp, fontWeight: FontWeight.w700, color: kRedTextColor);
  static TextStyle greyTextStyle() => GoogleFonts.openSans(
      fontSize: 14.sp, fontWeight: FontWeight.w700, color: kGreyTextColor);
  static TextStyle darkgreyTextStyle() => GoogleFonts.openSans(
      fontSize: 14.sp, fontWeight: FontWeight.w700, color: kDarkGreyTextColor);
}
