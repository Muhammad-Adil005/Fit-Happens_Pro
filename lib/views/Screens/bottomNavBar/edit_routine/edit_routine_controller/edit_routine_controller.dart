import 'package:get/get.dart';

class EditRoutineScreenController extends GetxController {
  var isWorkoutScheduleSelected = true.obs;

  void toggleWorkoutSchedule() {
    isWorkoutScheduleSelected.value = !isWorkoutScheduleSelected.value;
  }

  // Map to hold the selection state of each day
  var selectedDays = <String, bool>{
    'Mon': false,
    'Tue': false,
    'Wed': false,
    'Thu': false,
    'Fri': false,
    'Sat': false,
    'Sun': false,
  }.obs;
  // Function to toggle the selection state of a day
  void toggleDaySelection(String day) {
    selectedDays[day] = !selectedDays[day]!;
  }
}
