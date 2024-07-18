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

class PlanSelectionScreen extends StatelessWidget {
  const PlanSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BackgroundWidget(
                backgroundImage: kBackgroundImage3,
                child: Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomAppBar(progress: 0.05),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'First, let’s figure out the\ngoals and focus of your plan',
                            textAlign: TextAlign.center,
                            style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 27.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            ' It’s time to Embrace the Fitastrophe!',
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
                              Get.toNamed(kGenderScreenRoute);
                            },
                          ),
                          SizedBox(
                            height: 44.h,
                          ),
                        ])))));
  }
}
