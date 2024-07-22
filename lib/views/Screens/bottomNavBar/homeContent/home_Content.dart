import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../utils/app_colors.dart';

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
        body: Column(
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
                                colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
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
          ],
        ),
      ),
    );
  }
}
