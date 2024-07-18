import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/utils/app_images.dart';
import 'package:fit_happens_pro/utils/app_strings.dart';
import 'package:fit_happens_pro/utils/app_styles.dart';
import 'package:fit_happens_pro/views/CustomWidgets/background_image_widget.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_appbar.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_button.dart';
import 'package:fit_happens_pro/views/CustomWidgets/plan_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BackgroundWidget(
                backgroundImage: kBackgroundImage2,
                child: Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomAppBar(progress: 0.05),
                          SizedBox(
                            height: 50.h,
                          ),
                          Text(
                            'Hey there!',
                            textAlign: TextAlign.center,
                            style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 30.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            'We’re excited to welcome you to the Fit Happens\nPro community. Let’s create a personalized plan\njust for YOU!',
                            textAlign: TextAlign.center,
                            style: AppStyles.opacityTextStyle(
                                    opacity: 0.8899999856948853)
                                .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                           const PlanContainer(),
                          SizedBox(
                            height: 32.h,
                          ),
                          CustomButton(
                            width: 327.w,
                            height: 64.h,
                            gradient: const LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [
                                kButtonGradient1Color,
                                kButtonGradient2Color
                              ],
                            ),
                            borderRadius: 16.r,
                            text: 'Let’s Go!',
                            textStyle: AppStyles.buttonTextStyle().copyWith(),
                            onPressed: () {
                              Get.toNamed(kPlanSelectionScreenRoute);
                            },
                          ),
                          SizedBox(
                            height: 44.h,
                          ),
                        ])))));
  }
}
