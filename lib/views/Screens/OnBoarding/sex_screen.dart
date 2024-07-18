import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/utils/app_images.dart';
import 'package:fit_happens_pro/utils/app_styles.dart';
import 'package:fit_happens_pro/views/CustomWidgets/background_image_widget.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_appbar.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_button.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/Controller/onboarding_screens_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SexScreen extends StatelessWidget {
  const SexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingScreensController controller =
        Get.put(OnBoardingScreensController());
    return SafeArea(
        child: Scaffold(
            body: BackgroundWidget(
                backgroundImage: kBackgroundImage4,
                child: Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomAppBar(progress: 0.1),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            'What is your biological sex?',
                            textAlign: TextAlign.center,
                            style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 30.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Text(
                            'Select the sex you were assigned at birth or which more closely aligns with your current hormone profile.',
                            textAlign: TextAlign.center,
                            style: AppStyles.opacityTextStyle(
                                    opacity: 0.8899999856948853)
                                .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 24.h),
                          Text(
                            'This will help us better understand your body and personalize your plan.',
                            textAlign: TextAlign.center,
                            style: AppStyles.opacityTextStyle(
                                    opacity: 0.8899999856948853)
                                .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 26.h,
                          ),
                          Obx(() => GestureDetector(
                                onTap: () {
                                  controller.selectOption('male');
                                },
                                child: Container(
                                  width: 344.w,
                                  height: 144.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: kSelectionContainerColor,
                                    borderRadius: BorderRadius.circular(32.r),
                                    image: DecorationImage(
                                      image: AssetImage(kMaleGenderImage),
                                      fit: BoxFit.cover,
                                    ),
                                    border: controller.selectedOption.value ==
                                            'male'
                                        ? Border.all(
                                            color: kBlueTextColor,
                                            width: 4.w,
                                          )
                                        : Border.all(
                                            color: Colors.transparent,
                                          ),
                                    boxShadow: controller
                                                .selectedOption.value ==
                                            'male'
                                        ? [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 10.r,
                                              offset: const Offset(0, 5),
                                            )
                                          ]
                                        : [],
                                  ),
                                ),
                              )),
                          SizedBox(height: 16.h),
                          Obx(() => GestureDetector(
                                onTap: () {
                                  controller.selectOption('female');
                                },
                                child: Container(
                                  width: 344.w,
                                  height: 144.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: kSelectionContainerColor,
                                    borderRadius: BorderRadius.circular(32.r),
                                    image: DecorationImage(
                                      image: AssetImage(kFemaleGenderImage),
                                      fit: BoxFit.cover,
                                    ),
                                    border: controller.selectedOption.value ==
                                            'female'
                                        ? Border.all(
                                            color: kBlueTextColor,
                                            width: 4.w,
                                          )
                                        : Border.all(
                                            color: Colors.transparent,
                                          ),
                                    boxShadow: controller
                                                .selectedOption.value ==
                                            'female'
                                        ? [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 10.r,
                                              offset: const Offset(0, 5),
                                            )
                                          ]
                                        : [],
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 38.h,
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
                            text: 'Continue',
                            textStyle: AppStyles.buttonTextStyle().copyWith(),
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 44.h,
                          ),
                        ])))));
  }
}
