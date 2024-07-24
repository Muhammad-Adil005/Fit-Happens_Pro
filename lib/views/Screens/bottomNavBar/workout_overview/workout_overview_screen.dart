import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/views/Screens/bottomNavBar/workout_overview/workout_overview_controller/work_out_overview_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_images.dart';
import '../../../CustomWidgets/reusable_edit_routine_row_container.dart';
import '../../../CustomWidgets/work_out_overview_container.dart';
import '../../../CustomWidgets/workout_colored_container.dart';

class WorkOutOverviewScreen extends GetView<WorkOutOverViewScreenController> {
  const WorkOutOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2c3A41),
        appBar: AppBar(
          leading:
              Icon(Icons.arrow_back_ios, color: kWhiteTextColor, size: 16.sp),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Workout Overview',
            style: GoogleFonts.openSans(
              color: kWhiteTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: const Icon(Icons.more_vert, color: kWhiteTextColor),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Text(
                  'Bench Day',
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.bold,
                    color: kWhiteTextColor,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.timer_sharp, color: kWhiteTextColor, size: 16.sp),
                  SizedBox(width: 8.w),
                  Text(
                    '45 - 60 mins',
                    style: GoogleFonts.workSans(
                      color: kWhiteTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              const WorkOutColoredContainer(
                title: 'Warmup/mobility (optional)',
                subtitle: 'A quick series of exercises to warm you up (4mins)',
              ),
              SizedBox(height: 24.h),
              Container(
                height: 350.h,
                width: 371.w,
                padding: EdgeInsets.only(top: 16.h),
                color: kPercentIndicatorContainerColor,
                child: Column(
                  children: [
                    WorkOutOverviewContainer(
                      image: kWorkOut,
                      textValues: const [
                        'Bench Press',
                        'Warmup sets, then: 3x5, 4x3, ',
                        '1x1+, 1x5+@105, 120, 1335,  ',
                        '125, 115, 100, 90lbs'
                      ],
                      arrowImage: kWorkoutDoubleArrow,
                      questionMarkImage: kQuestionMark,
                    ),
                    SizedBox(height: 8.h),
                    WorkOutOverviewContainer(
                      image: kWorkOut1,
                      textValues: const [
                        'Bench Press',
                        'Warmup sets, then: 3x5, 4x3, ',
                        '1x1+, 1x5+@105, 120, 1335,  ',
                        '125, 115, 100, 90lbs'
                      ],
                      arrowImage: kWorkoutDoubleArrow,
                      questionMarkImage: kQuestionMark,
                    ),
                    SizedBox(height: 8.h),
                    WorkOutOverviewContainer(
                      image: kWorkOut2,
                      textValues: const [
                        'Bench Press',
                        'Warmup sets, then: 3x5, 4x3, ',
                        '1x1+, 1x5+@105, 120, 1335,  ',
                        '125, 115, 100, 90lbs'
                      ],
                      arrowImage: kWorkoutDoubleArrow,
                      questionMarkImage: kQuestionMark,
                    ),
                    SizedBox(height: 8.h),
                    WorkOutOverviewContainer(
                      image: kWorkOut3,
                      textValues: const [
                        'Bench Press',
                        'Warmup sets, then: 3x5, 4x3, ',
                        '1x1+, 1x5+@105, 120, 1335,  ',
                        '125, 115, 100, 90lbs'
                      ],
                      arrowImage: kWorkoutDoubleArrow,
                      questionMarkImage: kQuestionMark,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              const WorkOutColoredContainer(
                title: 'Cooldown/stretching (optional)',
                subtitle:
                    'A series of stretches to improve flexibility (9mins)',
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Color(0xff2c3A41),
            border: Border(
              top: BorderSide(
                color: Color(0xFF00FF8F),
                width: 1,
              ),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: ReusableEditRoutineRowContainer(
                  text: 'Log It',
                  imagePath: kLogit,
                  onTap: () {},
                ),
              ),
              SizedBox(width: 16.w),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBlueColor,
                ),
                child: const Center(
                  child: Icon(Icons.play_arrow, color: kWhiteTextColor),
                ),
              ),
              SizedBox(width: 16.w),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ReusableEditRoutineRowContainer(
                  text: 'Edit',
                  imagePath: kEdit,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
