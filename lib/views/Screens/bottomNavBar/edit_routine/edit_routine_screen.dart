import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../CustomWidgets/edit_routine_screen_dialog.dart';
import '../../../CustomWidgets/edit_routine_screen_reusable_container.dart';
import '../../../CustomWidgets/edit_routine_setting_dialog.dart';
import '../../../CustomWidgets/reusable_edit_routine_row_container.dart';
import 'edit_routine_controller/edit_routine_controller.dart';

class EditRoutineScreen extends GetView<EditRoutineScreenController> {
  const EditRoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2C3A41),
        appBar: AppBar(
          backgroundColor: kBlueColor,
          title: Text(
            'nSuns LP 4-day + Cardio',
            style: GoogleFonts.workSans(
              color: kWhiteTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
          leading:
              Icon(Icons.arrow_back_ios, color: kWhiteTextColor, size: 14.sp),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: kWhiteTextColor),
              onPressed: () {
                showRoutineDialog(context);
              },
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 4.h),
            Obx(
              () => Row(
                children: [
                  GestureDetector(
                    onTap: controller.toggleWorkoutSchedule,
                    child: Container(
                      height: 33.h,
                      width: 192.w,
                      decoration: BoxDecoration(
                        color: controller.isWorkoutScheduleSelected.value
                            ? kBlueColor
                            : kAlreadyDoneTextColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Workout Schedule',
                          style: GoogleFonts.workSans(
                            color: controller.isWorkoutScheduleSelected.value
                                ? kWhiteTextColor
                                : kGreyTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: controller.toggleWorkoutSchedule,
                    child: Container(
                      height: 33.h,
                      width: 192.w,
                      decoration: BoxDecoration(
                        color: !controller.isWorkoutScheduleSelected.value
                            ? kBlueColor
                            : kAlreadyDoneTextColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Cardio Schedule',
                          style: GoogleFonts.workSans(
                            color: !controller.isWorkoutScheduleSelected.value
                                ? kWhiteTextColor
                                : kGreyTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              height: 447.h,
              width: 371.w,
              color: kPercentIndicatorContainerColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  Container(
                    width: 365.w,
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
                            'Workout days:',
                            style: GoogleFonts.openSans(
                              color: kWhiteTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: controller.selectedDays.keys.map((day) {
                              return GestureDetector(
                                onTap: () => controller.toggleDaySelection(day),
                                child: Obx(
                                  () => Container(
                                    height: 25.h,
                                    width: 48.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      gradient: controller.selectedDays[day]!
                                          ? const LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xFF00FF8F),
                                                Color(0xFF00A1FF)
                                              ],
                                            )
                                          : null,
                                      border: controller.selectedDays[day]!
                                          ? null
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
                                        day,
                                        style: GoogleFonts.openSans(
                                          color: kWhiteTextColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
                    child: Text(
                      'Workouts:',
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  EditRoutineScreenReusableContainer(
                    height: 50.h,
                    color: kLabelTextColor,
                    text: 'Bench/OHP Day',
                    onAddPressed: () {},
                    onEditPressed: () {
                      // Get.to(() => const EditRoutineSettingDialog());
                      showEditRoutineSettingDialog(context);
                    },
                    onMinusPressed: () {},
                  ),
                  EditRoutineScreenReusableContainer(
                    height: 50.h,
                    color: kLabelTextColor,
                    text: 'Squat Day',
                    onAddPressed: () {},
                    onEditPressed: () {},
                    onMinusPressed: () {},
                  ),
                  EditRoutineScreenReusableContainer(
                    height: 50.h,
                    color: kLabelTextColor,
                    text: 'Deadlift Day',
                    onAddPressed: () {},
                    onEditPressed: () {},
                    onMinusPressed: () {},
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableEditRoutineRowContainer(
                        text: 'Import',
                        imagePath: kImport,
                        onTap: () {},
                      ),
                      SizedBox(width: 16.w),
                      ReusableEditRoutineRowContainer(
                        text: 'New',
                        imagePath: kPlus,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
