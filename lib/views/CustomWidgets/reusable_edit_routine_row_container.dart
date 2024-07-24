import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ReusableEditRoutineRowContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onTap;

  const ReusableEditRoutineRowContainer({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 88.w,
        height: 40.h,
        decoration: BoxDecoration(
          border: const GradientBoxBorder(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF00FF8F),
                Color(0xFF00A1FF),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 16.h, width: 16.w),
            SizedBox(width: 8.w),
            Text(
              text,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
