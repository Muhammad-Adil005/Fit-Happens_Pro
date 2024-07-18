import 'package:get/get.dart';

class OnBoardingScreensController extends GetxController {
  var selectedOption = ''.obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }
}
