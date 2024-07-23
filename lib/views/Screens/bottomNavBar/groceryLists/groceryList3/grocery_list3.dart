import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import 'groceryList2Controller/grocerylist2_controller.dart';

class GroceryList2Screen extends GetView<GroceryList2ScreenController> {
  const GroceryList2Screen({super.key});

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
                height: 150.h,
                decoration: const BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'List for:',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
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
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'First day',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            '# of days',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            'Batching ?',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30.h,
                            width: 112.w,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Sat June 15th',
                                  style: GoogleFonts.openSans(
                                    color: kWhiteTextColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                const Icon(Icons.keyboard_arrow_down_rounded,
                                    color: kWhiteTextColor),
                              ],
                            ),
                          ),
                          Container(
                            height: 30.h,
                            width: 112.w,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Sat June 15th',
                                  style: GoogleFonts.openSans(
                                    color: kWhiteTextColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                const Icon(Icons.keyboard_arrow_down_rounded,
                                    color: kWhiteTextColor),
                              ],
                            ),
                          ),
                          Text(
                            'Todays:',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                width: 343.w,
                height: 520.h,
                color: kPercentIndicatorContainerColor,
                child: Column(
                  children: [
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      color: kBlueColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 13.h, horizontal: 16.w),
                        child: Text(
                          'DAIRY AND EGG PRODUCTS',
                          style: GoogleFonts.openSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Low-fat flavored yogurt',
                                    style: GoogleFonts.openSans(
                                      color: kWhiteTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    '4 container (6oz) (680g)',
                                    style: GoogleFonts.openSans(
                                      color: kDairyPortionTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Hel',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kefir, flavored',
                                    style: GoogleFonts.openSans(
                                      color: kWhiteTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    '3 cup (720ml)',
                                    style: GoogleFonts.openSans(
                                      color: kDairyPortionTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Hel',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fresh mozzarella cheese',
                                    style: GoogleFonts.openSans(
                                      color: kWhiteTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    '2 2/3 oz (76g)',
                                    style: GoogleFonts.openSans(
                                      color: kDairyPortionTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Hel',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      color: kBlueColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 13.h, horizontal: 16.w),
                        child: Text(
                          'BAKED PRODUCT',
                          style: GoogleFonts.openSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flour tortillas',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                '2 tortilla (approx 7-8” dia) (98g)',
                                style: GoogleFonts.openSans(
                                  color: kDairyPortionTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Hel',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      color: kBlueColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 13.h, horizontal: 16.w),
                        child: Text(
                          'soups, sauces & graies',
                          style: GoogleFonts.openSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Salsa',
                                style: GoogleFonts.openSans(
                                  color: kWhiteTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                '2 tortilla (approx 7-8” dia) (98g)',
                                style: GoogleFonts.openSans(
                                  color: kDairyPortionTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Hel',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                          ),
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
