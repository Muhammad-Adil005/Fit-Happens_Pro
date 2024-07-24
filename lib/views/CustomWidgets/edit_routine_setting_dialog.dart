import 'package:fit_happens_pro/views/CustomWidgets/reusable_edit_routine_row_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class EditRoutineSettingDialog extends StatefulWidget {
  const EditRoutineSettingDialog({super.key});

  @override
  _EditRoutineSettingDialogState createState() =>
      _EditRoutineSettingDialogState();
}

class _EditRoutineSettingDialogState extends State<EditRoutineSettingDialog> {
  bool _multiCycle = false;
  bool _repeating = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 413.h,
        width: 354.w,
        decoration: BoxDecoration(
          color: kPercentIndicatorContainerColor,
          borderRadius: BorderRadius.circular(10),
          border: const GradientBoxBorder(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset(kQuestionMark, height: 24.h, width: 24.w),
                      SizedBox(width: 8.w),
                      Text(
                        'Routine Settings',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 24.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(kCrossCircle, height: 24.h, width: 24.w),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Container(
                height: 2.h,
                color: kWhiteTextColor,
              ),
              SizedBox(height: 8.h),
              Text(
                'Name',
                style: GoogleFonts.openSans(
                  color: kWhiteTextColor,
                  fontSize: 14.sp,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'nSuns LP 4-day + cardio',
                  hintStyle: TextStyle(
                    color: kWhiteTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: Colors.transparent,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: kWhiteTextColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kWhiteTextColor),
                  ),
                ),
                style: TextStyle(color: kWhiteTextColor),
              ),
              SizedBox(height: 16.h),
              Text(
                'Description',
                style: GoogleFonts.openSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              const TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: kWhiteTextColor, width: 4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kWhiteTextColor, width: 4),
                  ),
                ),
                style: TextStyle(color: kWhiteTextColor),
              ),
              SizedBox(height: 16.h),
              Text(
                'Advanced',
                style: GoogleFonts.openSans(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: true,
                        groupValue: _multiCycle,
                        onChanged: (value) {
                          setState(() {
                            _multiCycle = value as bool;
                          });
                        },
                        activeColor: kWhiteTextColor,
                      ),
                      Text(
                        'Multi-cycle?',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: true,
                        groupValue: _repeating,
                        onChanged: (value) {
                          setState(() {
                            _repeating = value as bool;
                          });
                        },
                        activeColor: kWhiteTextColor,
                      ),
                      Text(
                        'Repeating',
                        style: GoogleFonts.openSans(
                          color: kWhiteTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 1.h,
                color: kWhiteTextColor,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableEditRoutineRowContainer(
                    text: 'Cancel',
                    imagePath: kCancel,
                    onTap: () {},
                  ),
                  SizedBox(width: 16.w),
                  ReusableEditRoutineRowContainer(
                    text: 'Save',
                    imagePath: kDone,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showEditRoutineSettingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const EditRoutineSettingDialog();
    },
  );
}
