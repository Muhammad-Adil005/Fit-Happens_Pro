import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';

class WorkOutOverviewContainer extends StatelessWidget {
  final String image;
  final List<String> textValues;
  final String arrowImage;
  final String questionMarkImage;

  const WorkOutOverviewContainer({
    required this.image,
    required this.textValues,
    required this.arrowImage,
    required this.questionMarkImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 371.w,
      color: const Color(0xff2c3A41),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, fit: BoxFit.cover),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: textValues
                .map((text) => Text(
                      text,
                      style: GoogleFonts.openSans(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ))
                .toList(),
          ),
          Image.asset(arrowImage, height: 16.h, width: 16.w),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: Image.asset(questionMarkImage, height: 24.h, width: 24.w),
          ),
        ],
      ),
    );
  }
}
