import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../CustomWidgets/meal_card.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBottomNavBarScreenColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.h),
              SizedBox(
                height: 66.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: days.asMap().entries.map((entry) {
                    int index = entry.key;
                    String day = entry.value;
                    bool isSelected = index == selectedIndex;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        padding: EdgeInsets.only(top: 10.h),
                        width: 66.w,
                        height: 66.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: isSelected
                              ? LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF00FF8F),
                                    Color(0xFF00A1FF)
                                  ],
                                )
                              : null,
                          border: isSelected
                              ? Border.all(color: Colors.transparent)
                              : const GradientBoxBorder(
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
                            textAlign: TextAlign.center,
                            day,
                            style: const TextStyle(
                              color: kWhiteTextColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(kWorkoutStreak, height: 38.h, width: 36.w),
                  SizedBox(width: 8.w),
                  Text(
                    '0',
                    style: GoogleFonts.openSans(
                      color: kWhiteTextColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Workout Streak:',
                    style: GoogleFonts.openSans(
                      color: kWhiteTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  GradientText(
                    '11 days',
                    style: GoogleFonts.openSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                  ),
                  SizedBox(width: 8.w),
                  Image.asset(kFlame, height: 16.h, width: 16.w),
                ],
              ),
              SizedBox(height: 8.h),
              Container(
                width: 343.w,
                height: 280.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                  ),
                  border: Border.all(color: Colors.transparent),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: 60,
                        animation: true,
                        animationDuration: 1200,
                        lineWidth: 10,
                        percent: 0.8,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "3200",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                                color: kWhiteTextColor,
                              ),
                            ),
                            Text(
                              "calories left",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: kWhiteTextColor,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(kTrophy, width: 16.w, height: 16.h),
                                SizedBox(width: 8.w),
                                Text(
                                  '3200',
                                  style: GoogleFonts.openSans(
                                    color: kWhiteTextColor,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: kWhiteTextColor,
                        progressColor: kWhiteTextColor,
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        height: 64.h,
                        width: 333.w,
                        decoration: BoxDecoration(
                          color: kPercentIndicatorContainerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '>75g',
                                    style: GoogleFonts.openSans(
                                      color: kWhiteTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xff00FAC7),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'protein needed',
                                        style: GoogleFonts.openSans(
                                          color: kWhiteTextColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '>300g',
                                    style: GoogleFonts.openSans(
                                      color: kWhiteTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xff6DCFD0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'carbs needed',
                                        style: GoogleFonts.openSans(
                                          color: kWhiteTextColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Flexible',
                                    style: GoogleFonts.openSans(
                                      color: kWhiteTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xff0CA0EF),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'fat',
                                        style: GoogleFonts.openSans(
                                          color: kWhiteTextColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Todays workout:',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Rest Day',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(right: 32.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 22.h,
                      width: 101.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffEF5E0C),
                      ),
                      child: Center(
                        child: Text(
                          'Achievements',
                          style: GoogleFonts.openSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      height: 25.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffEF5E0C),
                      ),
                      child: Center(
                        child: Text(
                          'Badges',
                          style: GoogleFonts.openSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your activity',
                    style: GoogleFonts.openSans(
                      color: kWhiteTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: 343.w,
                height: 245.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  border: const GradientBoxBorder(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 4.h),
                    Image.asset(kNotification, height: 34.h, width: 27.w),
                    Text(
                      'Notification Setup',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Reminders are powerful users who enable at least two daily notifications are 78% more likely to reach their fitness goals.',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 16.sp,
                      ),
                    ),
                    Container(
                      height: 38.h,
                      width: 156.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings, color: kWhiteTextColor),
                          SizedBox(width: 8.w),
                          Text(
                            'Settings',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                'Planned Meals',
                style: GoogleFonts.workSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: 365.w,
                height: 50.h,
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
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40.h,
                        width: 111.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Breakfast',
                            style: GoogleFonts.workSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Lunch',
                        style: GoogleFonts.workSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        'Dinner',
                        style: GoogleFonts.workSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        'Snack',
                        style: GoogleFonts.workSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    MealCard(
                      imageUrl: kFrame1,
                      mealName: 'Grilled Chicken Quinoa Bowl',
                      calories: '250kcal, 14p, 10f, 32c',
                    ),
                    MealCard(
                      imageUrl: kFrame2,
                      mealName: 'Grilled Chicken Quinoa Bowl',
                      calories: '250kcal, 14p, 10f, 32c',
                    ),
                    MealCard(
                      imageUrl: kFrame3,
                      mealName: 'Grilled Chicken Quinoa Bowl',
                      calories: '250kcal, 14p, 10f, 32c',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(kPrep, width: 17.w, height: 17.h),
                        SizedBox(width: 8.w),
                        Text(
                          'Prep',
                          style: GoogleFonts.openSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 100.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.done, color: kWhiteTextColor, size: 30.sp),
                        SizedBox(width: 8.w),
                        Text(
                          'Log',
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
              SizedBox(height: 32.h),
              Text(
                'Weight Log',
                style: GoogleFonts.workSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: 343.w,
                height: 126.h,
                decoration: const BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'lbs',
                          style: GoogleFonts.workSans(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: 53.3,
                          height: 2.h,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(width: 32.w),
                    Container(
                      width: 100.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.done, color: kWhiteTextColor, size: 30.sp),
                          SizedBox(width: 8.w),
                          Text(
                            'Log',
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
              SizedBox(height: 16.h),
              Text(
                'Workout',
                style: GoogleFonts.workSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        kRestDay,
                        height: 200.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
