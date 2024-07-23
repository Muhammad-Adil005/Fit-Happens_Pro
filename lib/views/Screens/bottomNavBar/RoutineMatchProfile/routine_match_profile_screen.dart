import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../utils/app_images.dart';

class RoutineMatchProfileScreen extends StatelessWidget {
  const RoutineMatchProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2C3A41),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: LinearProgressIndicator(
                  value: 0.78,
                  backgroundColor: kWhiteTextColor,
                  color: kBlueColor,
                  minHeight: 16.h,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Here are the routine that match your profile.',
                style: GoogleFonts.openSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 36.sp,
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                width: 343.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPercentIndicatorContainerColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      kJustPick,
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      'Just pick the best one for me',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    Image.asset(
                      kCheckBox,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                height: 265.h,
                width: 343.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPercentIndicatorContainerColor,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        kRoutineScreenBoy,
                        width: 343.w,
                        height: 180.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      bottom: 90,
                      left: 70,
                      child: Text(
                        'Two Day Time Saver',
                        style: TextStyle(
                          color: kWhiteTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 78.w,
                                  height: 66.h,
                                  decoration: BoxDecoration(
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF00A1FF),
                                          Color(0xFF00FF8F)
                                        ],
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Select',
                                      style: GoogleFonts.openSans(
                                        color: kWhiteTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 78.w,
                                  height: 66.h,
                                  decoration: BoxDecoration(
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF00A1FF),
                                          Color(0xFF00FF8F)
                                        ],
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Detail',
                                      style: GoogleFonts.openSans(
                                        color: kWhiteTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                height: 265.h,
                width: 343.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPercentIndicatorContainerColor,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        kRoutineScreenGirl,
                        width: 343.w,
                        height: 180.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      bottom: 90,
                      left: 70,
                      child: Text(
                        'Two Day Time Saver',
                        style: TextStyle(
                          color: kWhiteTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 78.w,
                                  height: 66.h,
                                  decoration: BoxDecoration(
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF00A1FF),
                                          Color(0xFF00FF8F)
                                        ],
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Select',
                                      style: GoogleFonts.openSans(
                                        color: kWhiteTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 78.w,
                                  height: 66.h,
                                  decoration: BoxDecoration(
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF00A1FF),
                                          Color(0xFF00FF8F)
                                        ],
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Detail',
                                      style: GoogleFonts.openSans(
                                        color: kWhiteTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
