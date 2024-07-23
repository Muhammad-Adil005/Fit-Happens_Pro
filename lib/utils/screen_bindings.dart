import 'package:fit_happens_pro/views/Screens/OnBoarding/Controller/onboarding_screens_controller.dart';
import 'package:fit_happens_pro/views/Screens/bottomNavBar/workoutRestDay/workOutRestDayController/work_out_restday_controller.dart';
import 'package:fit_happens_pro/views/Screens/home/controller/home_controller.dart';
import 'package:get/get.dart';

import '../views/Screens/auth/controller/auth_controller.dart';
import '../views/Screens/bottomNavBar/RoutineMatchProfile/RoutineMatchProfileController/routine_match_profile_controller.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList1/groceryList1Controller/grocerylist1_controller.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList2/groceryList2Controller/grocerylist2_controller.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList3/groceryList3Controller/grocerylist3_controller.dart';
import '../views/Screens/bottomNavBar/groceryLists/groceryList4/groceryList4Controller/grocerylist4_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingScreensController());
    Get.lazyPut(() => AuthScreensController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => GroceryList1ScreenController());
    Get.lazyPut(() => GroceryList2ScreenController());
    Get.lazyPut(() => GroceryList3ScreenController());
    Get.lazyPut(() => GroceryList4ScreenController());
    Get.lazyPut(() => WorkOutRestDayScreenController());
    Get.lazyPut(() => RoutineMatchProfileScreenController());
  }
}
