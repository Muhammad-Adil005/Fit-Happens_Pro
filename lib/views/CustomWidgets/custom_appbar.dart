import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomAppBar extends StatelessWidget {
  final double progress;

  const CustomAppBar({required this.progress, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_left_outlined,
                  size: 30.sp, color: kGreenTextColor),
            ),
            Text(
              'Back',
              textAlign: TextAlign.center,
              style: AppStyles.greenTextStyle()
                  .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 8.h,
          width: 343.w,
          decoration: ShapeDecoration(
            color: kLinearBarColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          ),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: kLinearBarColor,
            valueColor: const AlwaysStoppedAnimation<Color>(kBlueTextColor),
            minHeight: 2.h,
          ),
        ),
      ],
    );
  }
}
