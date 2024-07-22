import 'package:fit_happens_pro/utils/app_strings.dart';
import 'package:fit_happens_pro/utils/screen_bindings.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/gender_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/get_started_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/plan_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/plan_selection_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/sex_screen.dart';
import 'package:fit_happens_pro/views/Screens/home/home_screen.dart';
import 'package:get/get.dart';

import '../views/Screens/auth/login/login_screen.dart';
import '../views/Screens/auth/sign_up/sign_up_screen.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kGetStartedScreenRoute,
          page: () => const GetStartedScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kPlanScreenRoute,
          page: () => const PlanScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kPlanSelectionScreenRoute,
          page: () => const PlanSelectionScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kGenderScreenRoute,
          page: () => const GenderScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSexScreenRoute,
          page: () => const SexScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kLoginScreenRoute,
          page: () => const LoginScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSignUpScreenRoute,
          page: () => const SignUpScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kHomeScreenRoute,
          page: () => const HomeScreen(),
          binding: ScreenBindings()),
    ];
  }
}
