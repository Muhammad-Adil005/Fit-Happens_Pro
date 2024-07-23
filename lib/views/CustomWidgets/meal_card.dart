import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class MealCard extends StatelessWidget {
  final String imageUrl;
  final String mealName;
  final String calories;

  const MealCard({
    super.key,
    required this.imageUrl,
    required this.mealName,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            height: 200.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 16.h,
            left: 16.w,
            child: Text(
              mealName,
              style: GoogleFonts.workSans(
                color: kWhiteTextColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 16.h,
            left: 16.w,
            child: Row(
              children: [
                Image.asset(kCalories, height: 18.h, width: 18.w),
                SizedBox(width: 8.w),
                Text(
                  calories,
                  style: GoogleFonts.workSans(
                    color: kWhiteTextColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16.h,
            right: 16.w,
            child: const Icon(Icons.more_vert, color: kWhiteTextColor),
          ),
          // Positioned(
          //   bottom: 16,
          //   right: 16,
          //   child: Icon(Icons.star, color: Colors.white),
          // ),
        ],
      ),
    );
  }
}
