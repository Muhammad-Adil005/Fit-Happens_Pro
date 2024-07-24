import 'package:fit_happens_pro/utils/app_strings.dart';
import 'package:fit_happens_pro/utils/screen_bindings.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/gender_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/get_started_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/plan_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/plan_selection_screen.dart';
import 'package:fit_happens_pro/views/Screens/OnBoarding/sex_screen.dart';
import 'package:fit_happens_pro/views/Screens/bottomNavBar/RoutineMatchProfile/routine_match_profile_screen.dart';
import 'package:fit_happens_pro/views/Screens/bottomNavBar/workout_overview/workout_overview_screen.dart';
import 'package:fit_happens_pro/views/Screens/home/home_screen.dart';
import 'package:get/get.dart';

import '../views/Screens/auth/login/login_screen.dart';
import '../views/Screens/auth/sign_up/sign_up_screen.dart';
import '../views/Screens/bottomNavBar/edit_routine/edit_routine_screen.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList1/grocery_list1.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList2/grocery_list2.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList3/grocery_list3.dart';
import '../views/Screens/bottomNavBar/workoutRestDay/work_out_restday.dart';

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
      GetPage(
          name: kGroceryList1ScreenRoute,
          page: () => const GroceryList1Screen(),
          binding: ScreenBindings()),
      GetPage(
          name: kGroceryList2ScreenRoute,
          page: () => const GroceryList2Screen(),
          binding: ScreenBindings()),
      GetPage(
          name: kGroceryList3ScreenRoute,
          page: () => const GroceryList3Screen(),
          binding: ScreenBindings()),
      GetPage(
          name: kGroceryList4ScreenRoute,
          page: () => const GroceryList3Screen(),
          binding: ScreenBindings()),
      GetPage(
          name: kWorkOutListDayScreenRoute,
          page: () => const WorkOutRestDayScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kRoutineMatchProfileScreenRoute,
          page: () => const RoutineMatchProfileScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kEditRouteScreenRoute,
          page: () => const EditRoutineScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kWorkOutOverviewScreenRoute,
          page: () => const WorkOutOverviewScreen(),
          binding: ScreenBindings()),
    ];
  }
}
