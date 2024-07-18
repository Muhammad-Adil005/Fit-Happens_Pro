import 'package:fit_happens_pro/utils/app_colors.dart';
import 'package:fit_happens_pro/utils/app_images.dart';
import 'package:fit_happens_pro/utils/app_styles.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/Controller/onboarding_screens_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PlanContainer extends StatelessWidget {
  const PlanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSelectionContainerColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 343.w,
            height: 36.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 9.h),
            decoration: const BoxDecoration(color: kBlueContainerColor),
            child: Text(
              'Your Plan',
              style: AppStyles.opacityTextStyle(opacity: 0.8899999856948853)
                  .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
            ),
          ),
          PlanOption(iconPath: kGoalsIcon, title: 'Goals & Focus'),
          PlanOption(iconPath: kMetabolicIcon, title: 'Metabolic Analysis'),
          PlanOption(
              iconPath: kMacronutrientIcon, title: 'Macronutrient Targets'),
          PlanOption(
              iconPath: kMealPlanIcon, title: 'Meal Plan Personalization'),
          PlanOption(iconPath: kTrainingIcon, title: 'Training Profile'),
          PlanOption(
              iconPath: kWorkOutIcon, title: 'Workout Plan Personalization'),
        ],
      ),
    );
  }
}

class PlanOption extends StatelessWidget {
  final String iconPath;
  final String title;

  const PlanOption({
    super.key,
    required this.iconPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final OnBoardingScreensController controller =
        Get.find<OnBoardingScreensController>();

    return Obx(() {
      bool isSelected = controller.selectedOption.value == title;
      return GestureDetector(
        onTap: () {
          controller.selectOption(title);
        },
        child: Container(
          width: 343.w,
          height: 56.h,
          decoration: const BoxDecoration(color: kSelectionContainerColor),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Row(
              children: [
                SvgPicture.asset(iconPath),
                SizedBox(width: 8.w),
                Text(
                  title,
                  style: AppStyles.whiteTextStyle().copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.white : Colors.grey,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(isSelected ? kSelectedIcon : kSelectionIcon),
              ],
            ),
          ),
        ),
      );
    });
  }
}
