import 'package:fit_happens_pro/views/Screens/OnBoarding/Controller/onboarding_screens_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingScreensController());
    
  }
}
