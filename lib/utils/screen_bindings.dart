import 'package:fit_happens_pro/views/Screens/OnBoarding/Controller/onboarding_screens_controller.dart';
import 'package:fit_happens_pro/views/Screens/home/controller/home_controller.dart';
import 'package:get/get.dart';

import '../views/Screens/auth/controller/auth_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingScreensController());
    Get.lazyPut(() => AuthScreensController());
    Get.lazyPut(() => HomeScreenController());
  }
}
