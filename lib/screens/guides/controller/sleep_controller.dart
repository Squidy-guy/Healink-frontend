import 'package:get/get.dart';

class SleepController extends GetxController {
  // Expandable sections
  RxBool isExpanded = true.obs;

  // Sleep habits list
  RxList<Map<String, dynamic>> sleepHabits = [
    {"title": "Avoid caffeine and napping in late afternoon", "added": false},
    {"title": "Dark, quiet, cool, comfy sleeping environment", "added": false},
    {"title": "Wake up at an ideal time consistently", "added": false},
    {"title": "Use the bedroom for sleep only", "added": false},
    {"title": "Wind down for sleep", "added": false},
    {"title": "Calm the mind in bed", "added": false},
    {
      "title": "Go to bed at an ideal time consistently",
      "added": true
    }, // Already added
  ].obs;

  // Toggle "Added" state
  void toggleHabit(int index) {
    sleepHabits[index]['added'] = !sleepHabits[index]['added'];
    sleepHabits.refresh();
  }

  // Expand section
  void toggleExpand() {
    isExpanded.value = !isExpanded.value;
  }
}
