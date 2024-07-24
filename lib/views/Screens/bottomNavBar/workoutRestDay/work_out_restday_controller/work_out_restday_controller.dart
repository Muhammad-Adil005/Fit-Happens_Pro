import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../edit_routine/edit_routine_screen.dart';

class WorkOutRestDayScreenController extends GetxController {
  var selectedDayIndex = -1.obs;

  void onDaySelected(int index) {
    //selectedDayIndex.value = index;
  }

  void showRoutineDialog() {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.transparent,
        content: Container(
          width: 200.w,
          decoration: const BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
              ),
            ),
            color: Color(0xff2C3A41),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildRoutineButton(Icons.edit, 'Edit Routine'),
              _buildRoutineButton(Icons.refresh, 'New Routine'),
              _buildRoutineButton(Icons.delete, 'Delete Routine'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoutineButton(IconData icon, String text) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kWhiteTextColor, width: 1),
        ),
      ),
      child: ListTile(
        leading: Icon(icon, color: kWhiteTextColor),
        title: Text(
          text,
          style: GoogleFonts.openSans(
            color: kWhiteTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: () {
          Get.to(() => const EditRoutineScreen());
        },
      ),
    );
  }

  void showCustomDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 300.h,
          width: 354.w,
          color: kPercentIndicatorContainerColor,
          child: Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(kQuestionMark, height: 24.h, width: 24.w),
                    SizedBox(width: 8.w),
                    Text(
                      'What do you want to do?',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child:
                          Image.asset(kCrossCircle, height: 24.h, width: 24.w),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 2.h,
                    color: kWhiteTextColor,
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                  child: Container(
                    width: 345.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pick from Recommended Routines',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            'Go straight to your list of matching routines and pick a new one.',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                  child: Container(
                    width: 345.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pick from Recommended Routines',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            'Go straight to your list of matching routines and pick a new one.',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 2.h,
                    color: kWhiteTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
