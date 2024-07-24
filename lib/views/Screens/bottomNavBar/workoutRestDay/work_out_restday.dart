import 'package:fit_happens_pro/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../utils/app_colors.dart';
import '../edit_routine/edit_routine_screen.dart';

class WorkOutRestDayScreen extends StatefulWidget {
  const WorkOutRestDayScreen({super.key});

  @override
  _WorkOutRestDayScreenState createState() => _WorkOutRestDayScreenState();
}

class _WorkOutRestDayScreenState extends State<WorkOutRestDayScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedDayIndex = -1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void onDaySelected(int index) {
    setState(() {
      selectedDayIndex = index;
    });
  }

  void _showRoutineDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
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
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kWhiteTextColor, width: 1),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.edit, color: kWhiteTextColor),
                    title: Text(
                      'Edit Routine',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kWhiteTextColor, width: 1),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.refresh, color: kWhiteTextColor),
                    title: Text(
                      'New Routine',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Get.to(() => const EditRoutineScreen());
                    },
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kWhiteTextColor, width: 1),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.delete, color: kWhiteTextColor),
                    title: Text(
                      'Delete Routine',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
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
                        child: Image.asset(kCrossCircle,
                            height: 24.h, width: 24.w),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 8.h),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 8.h),
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2C3A41),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: kBlueColor,
          onPressed: _showRoutineDialog,
          child: const Icon(Icons.edit, color: kWhiteTextColor),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(kWorkOutFrame),
              Text(
                'nSuns LP 4-day + Cardio',
                style: GoogleFonts.openSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 30.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                child: Container(
                  height: 60.h,
                  decoration: const BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                      ),
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
                      ),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    labelStyle: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                    unselectedLabelColor: kWhiteTextColor,
                    unselectedLabelStyle: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                    tabs: [
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
                              colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
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
                              colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                child: GestureDetector(
                  onTap: () => onDaySelected(0),
                  child: Container(
                    height: 98.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: selectedDayIndex == 0
                          ? const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                            )
                          : null,
                      border: selectedDayIndex != 0
                          ? const GradientBoxBorder(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                              ),
                            )
                          : null,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      child: Row(
                        children: [
                          Container(
                            height: 66.h,
                            width: 66.w,
                            decoration: BoxDecoration(
                              color:
                                  selectedDayIndex == 0 ? Colors.white : null,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                'Mon',
                                style: GoogleFonts.openSans(
                                  color: selectedDayIndex == 0
                                      ? kBlueColor
                                      : kBlackTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Text(
                            'Bench/OHP Day',
                            style: GoogleFonts.openSans(
                              color: const Color(0xffD7D8D9),
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                child: GestureDetector(
                  onTap: () => onDaySelected(1),
                  child: Container(
                    height: 98.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: selectedDayIndex == 1
                          ? const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                            )
                          : null,
                      border: selectedDayIndex != 1
                          ? const GradientBoxBorder(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF00A1FF), Color(0xFF00FF8F)],
                              ),
                            )
                          : null,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      child: Row(
                        children: [
                          Container(
                            height: 66.h,
                            width: 66.w,
                            decoration: BoxDecoration(
                              color:
                                  selectedDayIndex == 1 ? Colors.white : null,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                'Thu',
                                style: GoogleFonts.openSans(
                                  color: selectedDayIndex == 1
                                      ? kBlueColor
                                      : kBlackTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Text(
                            'Rest Day',
                            style: GoogleFonts.openSans(
                              color: const Color(0xffD7D8D9),
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
