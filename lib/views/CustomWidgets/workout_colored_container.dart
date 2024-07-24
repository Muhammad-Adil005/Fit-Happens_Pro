import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../utils/app_colors.dart';

class WorkOutColoredContainer extends StatelessWidget {
  final String title;
  final String subtitle;

  const WorkOutColoredContainer({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 371.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: const GradientBoxBorder(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.openSans(
              color: kWhiteTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.openSans(
              color: kWhiteTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
