import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import 'groceryList4Controller/grocerylist4_controller.dart';

class GroceryList4Screen extends GetView<GroceryList4ScreenController> {
  const GroceryList4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2C3A41),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kBlueColor,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Image.asset(kFloatingActionButtonImage,
              height: 30.h, width: 34.w),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 47.h,
                color: kBlueColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios,
                          color: kWhiteTextColor, size: 20.sp),
                      Text(
                        'Grocery List',
                        style: GoogleFonts.workSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                      Icon(Icons.more_vert,
                          color: kWhiteTextColor, size: 20.sp),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Container(
                      height: 32.h,
                      width: 193.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kBlueColor,
                      ),
                      child: Center(
                        child: Text(
                          'Shopping list (33)',
                          style: GoogleFonts.workSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Already done (3)',
                    style: GoogleFonts.workSans(
                      color: kAlreadyDoneTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: 343.w,
                height: 94.h,
                decoration: const BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'List for:',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35.h,
                            width: 102.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'This Week',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 35.h,
                            width: 102.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF00FF8F),
                                    Color(0xFF00A1FF)
                                  ],
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Next Week',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 35.h,
                            width: 102.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF00FF8F),
                                    Color(0xFF00A1FF)
                                  ],
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Custom',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                height: 363.h,
                width: 354.w,
                color: kPercentIndicatorContainerColor,
                child: Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Row(
                            children: [
                              Image.asset(kQuestionMark,
                                  height: 24.h, width: 24.w),
                              SizedBox(width: 8.w),
                              Text(
                                'Flour tortillas',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Image.asset(kCrossCircle,
                                height: 24.h, width: 24.w),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Container(
                          height: 2.h,
                          color: kWhiteTextColor,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '2 tortilla (approx 7-8” dia) (98g)',
                        style: GoogleFonts.openSans(
                          color: kBlueColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        height: 143.h,
                        width: 346.w,
                        color: const Color(0xff393C43),
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.start,
                              'Find brands with similar macros:',
                              style: GoogleFonts.openSans(
                                color: kWhiteTextColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '148cals, 4p, 4f, 22c',
                              style: GoogleFonts.openSans(
                                color: kBlueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'per',
                              style: GoogleFonts.openSans(
                                color: kWhiteTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 2.h,
                                  width: 20.w,
                                  color: kWhiteTextColor,
                                ),
                                Container(
                                  height: 2.h,
                                  width: 50.w,
                                  color: kWhiteTextColor,
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: GoogleFonts.openSans(
                                        color: kWhiteTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '+',
                                  style: GoogleFonts.openSans(
                                    color: kWhiteTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.sp,
                                  ),
                                ),
                                Container(
                                  height: 38.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: const GradientBoxBorder(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF00FF8F),
                                          Color(0xFF00A1FF)
                                        ],
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'tortilla (approx 7)',
                                          style: GoogleFonts.openSans(
                                            color: kWhiteTextColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        const Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: kWhiteTextColor),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Used in:',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Quick brownbag burritos',
                        style: GoogleFonts.openSans(
                          color: kBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        '2 tortilla (approx 7-8” dia) (98g)',
                        style: GoogleFonts.openSans(
                          color: kDarkGreyTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
