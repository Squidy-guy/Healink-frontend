import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';

class HabitController extends GetxController {
  var selectedHabits = <String>[].obs;

  List<Map<String, dynamic>> habits = [
    {'icon': kHabit1, 'name': 'Wake up at an ideal time consistently'},
    {'icon': kHabit2, 'name': 'Use the bedroom for sleep only'},
    {'icon': kHabit3, 'name': 'Avoid caffeine and napping in late afternoon'},
    {'icon': kHabit4, 'name': 'Wind down for sleep'},
    {'icon': kHabit5, 'name': 'Dark, quiet, cool, comfy sleeping environment'},
    {'icon': kHabit6, 'name': 'Calm the mind in bed'},
    {'icon': kHabit7, 'name': 'Go to bed at an ideal time consistently'},
    {'icon': kHabit8, 'name': 'Eat a healthy breakfast'},
    {'icon': kHabit9, 'name': 'Eat a healthy lunch'},
    {'icon': kHabit10, 'name': 'Eat a healthy dinner'},
    {'icon': kHabit11, 'name': 'Avoid junk food, alcohol, and nicotine'},
    {'icon': kHabit12, 'name': 'Go outside for sunlight'},
    {'icon': kHabit13, 'name': 'Intermittent fasting'},
    {'icon': kHabit14, 'name': 'Adequately hydrate'},
    {'icon': kHabit15, 'name': 'Aerobic exercise - moderate intensity'},
    {'icon': kHabit16, 'name': 'Aerobic exercise - vigorous intensity'},
    {'icon': kHabit17, 'name': 'Strength training'},
    {'icon': kHabit18, 'name': 'Move often'},
    {'icon': kHabit19, 'name': 'Stretching & posture'},
    {'icon': kHabit20, 'name': 'Social interaction'},
    {'icon': kHabit21, 'name': 'Motor skill training'},
    {'icon': kHabit22, 'name': 'Analyze and learn'},
    {'icon': kHabit23, 'name': 'Creative synthesis'},
    {'icon': kHabit24, 'name': 'Explore in nature'},
    {'icon': kHabit25, 'name': 'Mindfulness'},
    {'icon': kHabit26, 'name': 'Self-reflection'},
    {'icon': kHabit27, 'name': 'Delay gratification'},
    {'icon': kHabit28, 'name': 'Plan goals and take action daily'},
    {'icon': kHabit29, 'name': 'Gratitude'},
    {'icon': kHabit30, 'name': 'Social connection'},
  ].obs;

  void toggleHabit(String habit) {
    if (selectedHabits.contains(habit)) {
      selectedHabits.remove(habit);
    } else {
      selectedHabits.add(habit);
    }
  }

  void selectAllHabits() {
    if (selectedHabits.length == habits.length) {
      selectedHabits.clear();
    } else {
      selectedHabits
          .assignAll(habits.map((habit) => habit['name'] as String).toList());
    }
  }
}
