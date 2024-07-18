import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/utils/app_images.dart';
import 'package:fit_happens_pro/utils/app_strings.dart';
import 'package:fit_happens_pro/utils/app_styles.dart';
import 'package:fit_happens_pro/views/CustomWidgets/background_image_widget.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_appbar.dart';
import 'package:fit_happens_pro/views/CustomWidgets/custom_button.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/Controller/onboarding_screens_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

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
                            'What is your gender?',
                            textAlign: TextAlign.center,
                            style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 30.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 55.h),
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
                                  padding: EdgeInsets.all(16.sp),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 27.w,
                                      height: 27.h,
                                      decoration: BoxDecoration(
                                        color:
                                            controller.selectedOption.value ==
                                                    'male'
                                                ? kBlueTextColor
                                                : kSelectionContainerColor,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1.w,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.male_outlined,
                                        color:
                                            controller.selectedOption.value ==
                                                    'male'
                                                ? Colors.black
                                                : Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(height: 20.h),
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
                                  padding: EdgeInsets.all(16.sp),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 27.w,
                                      height: 27.h,
                                      decoration: BoxDecoration(
                                        color:
                                            controller.selectedOption.value ==
                                                    'female'
                                                ? kBlueTextColor
                                                : kSelectionContainerColor,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1.w,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.female_outlined,
                                        color:
                                            controller.selectedOption.value ==
                                                    'female'
                                                ? Colors.black
                                                : Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(height: 100.h),
                          CustomButton(
                            width: 327.w,
                            height: 64.h,
                            borderRadius: 16.r,
                            color: Colors.transparent,
                            borderColor: kBlueTextColor,
                            text: 'I’m non-binary',
                            textStyle: AppStyles.buttonTextStyle().copyWith(),
                            onPressed: () {},
                            isOutlined: true,
                          ),
                          SizedBox(height: 24.h),
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
                            onPressed: () {
                              Get.toNamed(kSexScreenRoute);
                            },
                          ),
                          SizedBox(
                            height: 44.h,
                          ),
                        ])))));
  }
}
