import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditRoutineScreenReusableContainer extends StatelessWidget {
  final double height;
  final Color color;
  final String text;
  final VoidCallback onMinusPressed;
  final VoidCallback onAddPressed;
  final VoidCallback onEditPressed;

  const EditRoutineScreenReusableContainer({
    Key? key,
    required this.height,
    required this.color,
    required this.text,
    required this.onMinusPressed,
    required this.onAddPressed,
    required this.onEditPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        height: height,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.keyboard_double_arrow_up_outlined,
                    color: Colors.white),
                SizedBox(width: 8.w),
                Text(
                  text,
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(CupertinoIcons.minus,
                      color: Colors.white, size: 24.sp),
                  onPressed: onMinusPressed,
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.white, size: 24.sp),
                  onPressed: onAddPressed,
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.white, size: 24.sp),
                  onPressed: onEditPressed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
