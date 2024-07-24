import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../utils/app_colors.dart';

void showRoutineDialog(BuildContext context) {
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
                  leading: const Icon(Icons.settings, color: kWhiteTextColor),
                  title: Text(
                    'Routine Settings',
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
                    'Restart Routine',
                    style: GoogleFonts.openSans(
                      color: kWhiteTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kWhiteTextColor, width: 1),
                  ),
                ),
                child: ListTile(
                  leading:
                      const Icon(Icons.pages_rounded, color: kWhiteTextColor),
                  title: Text(
                    'Export Pdf',
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
