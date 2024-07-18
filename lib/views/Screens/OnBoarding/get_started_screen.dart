import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/utils/app_strings.dart';
import 'package:fit_happens_pro/utils/app_styles.dart';
import 'package:fit_happens_pro/views/CustomWidgets/background_image_widget.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fit_happens_pro/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BackgroundWidget(
          backgroundImage: kBackgroundImage1,
          child: Padding(
            padding: EdgeInsets.only(left: 19.w, right: 19.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 305.h,
                ),
                Image.asset(
                  kAppLogo,
                  width: 119.w,
                  height: 119.h,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Image.asset(
                  kAppText1Logo,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Image.asset(
                  kAppText2Logo,
                  width: 285.w,
                  height: 14.h,
                ),
                SizedBox(
                  height: 108.h,
                ),
                CustomButton(
                  width: 327.w,
                  height: 64.h,
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [kButtonGradient1Color, kButtonGradient2Color],
                  ),
                  borderRadius: 16.r,
                  text: 'Get Started',
                  textStyle: AppStyles.buttonTextStyle().copyWith(),
                  onPressed: () {
                    Get.toNamed(kPlanScreenRoute);
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                  width: 327.w,
                  height: 64.h,
                  borderRadius: 16.r,
                  color: Colors.transparent,
                  borderColor: kBlueTextColor,
                  text: 'Sign In',
                  textStyle: AppStyles.buttonTextStyle().copyWith(),
                  onPressed: () {
                    // Get.toNamed(kNavBarScreenRoute);
                  },
                  isOutlined: true,
                ),
                SizedBox(
                  height: 44.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
