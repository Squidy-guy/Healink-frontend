import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';

class GuidesController extends GetxController {
  RxBool isSleepExpanded = true.obs;
  RxBool isNutritionExpanded = true.obs;
  RxBool isStimulationExpanded = true.obs;
  RxBool isExerciseExpanded = true.obs;
  RxBool isResilienceExpanded = true.obs;
  RxList<Map<String, dynamic>> sleepHabits = [
    {
      "title": "Avoid caffeine and napping in late afternoon",
      "added": false,
      "image": kHabit3
    },
    {
      "title": "Dark, quiet, cool, comfy sleeping environment",
      "added": false,
      "image": kHabit5
    },
    {
      "title": "Wake up at an ideal time consistently",
      "added": false,
      "image": kHabit1
    },
    {
      "title": "Use the bedroom for sleep only",
      "added": false,
      "image": kHabit2
    },
    {"title": "Wind down for sleep", "added": false, "image": kHabit4},
    {"title": "Calm the mind in bed", "added": false, "image": kHabit6},
    {
      "title": "Go to bed at an ideal time consistently",
      "added": true,
      "image": kHabit7
    },
  ].obs;

  RxList<Map<String, dynamic>> exerciceHabits = [
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
    {
      "title": "Aerobic exercise - vigorous intensity",
      "added": false,
      "image": kHabit16
    },
    {"title": "Strength training", "added": false, "image": kHabit17},
    {"title": "Move often", "added": false, "image": kHabit18},
    {"title": "Stretching & posture", "added": false, "image": kHabit19},
  ].obs;

  RxList<Map<String, dynamic>> resilienceHabits = [
    {"title": "Mindfulness", "added": false, "image": kHabit25},
    {"title": "Self-reflection", "added": false, "image": kHabit26},
    {
      "title": "Plan goals and take action daily",
      "added": false,
      "image": kHabit28
    },
    {"title": "Delay gratification", "added": false, "image": kHabit27},
    {"title": "Gratitude", "added": false, "image": kHabit29},
    {"title": "Social connection", "added": false, "image": kHabit30},
  ].obs;

  RxList<Map<String, dynamic>> stimulationHabits = [
    {"title": "Social interaction", "added": false, "image": kHabit20},
    {"title": "Motor skill training", "added": false, "image": kHabit21},
    {"title": "Analyze and learn", "added": false, "image": kHabit22},
    {"title": "Creative synthesis", "added": false, "image": kHabit23},
    {"title": "Explore in nature", "added": false, "image": kHabit24},
  ].obs;

  RxList<Map<String, dynamic>> nutritionHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {"title": "Go outside for sunlight", "added": false, "image": kHabit12},
    {"title": "Adequately hydrate", "added": false, "image": kHabit14},
    {"title": "Intermittent fasting", "added": true, "image": kHabit13},
  ].obs;

  List<Map<String, dynamic>> sleepSessions = [
    {"title": "Circadian Rhythm and Chronotype", "image": kSleep1},
    {"title": "Preparing for Sleep", "image": kSleep2},
    {"title": "Calm Mind for Sleep", "image": kSleep3},
    {"title": "Sleep Hygiene in the Bedroom", "image": kSleep4},
    {"title": "Optimal Sleeping Environment", "image": kSleep5},
    {"title": "Napping and Caffeine", "image": kSleep6},
  ];
  List<Map<String, dynamic>> nutritionSessions = [
    {"title": "Mediterranean Diet", "image": kNutrition1},
    {"title": "Intermittent Fasting", "image": kNutrition2},
    {"title": "Sunlight and Vitamin D", "image": kNutrition3},
    {"title": "Adequate Hydration", "image": kNutrition4},
    {"title": "Avoid Lifestyle Toxins", "image": kNutrition5},
  ];
  List<Map<String, dynamic>> stimulationSessions = [
    {"title": "Social Interaction", "image": kStimulation1},
    {"title": "Creative Synthesis", "image": kStimulation2},
    {"title": "Motor Skills", "image": kStimulation3},
    {"title": "Analyze and Learn", "image": kStimulation4},
    {"title": "Travel & Exploring New Places", "image": kStimulation5},
  ];
  List<Map<String, dynamic>> resilienceSessions = [
    {"title": "Attention Control and Mindfulness", "image": kResilience1},
    {"title": "Cognitive Control and Reasoning", "image": kResilience2},
    {"title": "Delaying Gratification", "image": kResilience3},
    {"title": "Achievement and Life Purpose", "image": kResilience4},
    {"title": "Gratitude and Appreciation", "image": kResilience5},
    {"title": "Social Connection", "image": kResilience6},
  ];
  List<Map<String, dynamic>> exerciseSessions = [
    {"title": "Aerobic Exercise", "image": kExercise1},
    {"title": "Strength Training", "image": kExercise2},
    {"title": "Flexibility Training", "image": kExercise3},
    {"title": "Sitting and Moving", "image": kExercise4},
    {"title": "High-Intensity Interval Training", "image": kExercise5},
  ];

  void toggleHabit(int index, RxList<Map<String, dynamic>> list) {
    list[index]['added'] = !list[index]['added'];
    list.refresh();
  }

  void toggleExpand(RxBool expanded) {
    expanded.value = !expanded.value;
  }
}
