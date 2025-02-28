import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';

class BiomarkerController extends GetxController {
  var isExpanded = true.obs;
  var isRisks = false.obs;
  var isInfoExpanded = false.obs;

  void toggleExpansion() {
    isExpanded.value = !isExpanded.value;
  }

  void toggleRisk() {
    isRisks.value = !isRisks.value;
  }

  void toggleInfoExpansion() {
    isInfoExpanded.value = !isInfoExpanded.value;
  }

  List<Map<String, dynamic>> biomarkers = [
    {
      "name": "Triglycerides",
      "category": "Heart disease",
      "image": kBiomarker1,
      "icon": kHeartIcon,
    },
    {
      "name": "Fasting blood glucose",
      "category": "Diabetes",
      "image": kBiomarker2,
      "icon": kSlimIcon,
    },
    {
      "name": "HS C-reactive protein",
      "category": "Inflammation",
      "image": kBiomarker3,
      "icon": kSoundIcon,
    },
    {
      "name": "Blood pressure (sys./dia.)",
      "category": "Heart disease",
      "image": kBiomarker4,
      "icon": kHeartIcon,
    },
    {
      "name": "Waist-to-hip ratio",
      "category": "Diabetes",
      "image": kBiomarker5,
      "icon": kSlimIcon,
    },
    {
      "name": "VO2 max",
      "category": "Longevity",
      "image": kBiomarker6,
      "icon": kMuscleIcon,
    },
    {
      "name": "Grip strength",
      "category": "Longevity",
      "image": kBiomarker7,
      "icon": kMuscleIcon,
    },
    {
      "name": "Cortisol:DHEA-S ratio",
      "category": "Stress",
      "image": kBiomarker8,
      "icon": kFaceIcon,
    },
    {
      "name": "PBMC Telomere length (20th%)",
      "category": "Ageing",
      "image": kBiomarker9,
      "icon": kAgeIcon,
    },
    {
      "name": "Plasma BDNF",
      "category": "Depression",
      "image": kBiomarker10,
      "icon": kFaceIcon,
    },
    {
      "name": "NAD+",
      "category": "Ageing",
      "image": kBiomarker11,
      "icon": kAgeIcon,
    },
    {
      "name": "DunedinPACE epigenetic clock",
      "category": "Ageing",
      "image": kBiomarker12,
      "icon": kAgeIcon,
    },
    {
      "name": "ctDNA",
      "category": "Cancer",
      "image": kBiomarker13,
      "icon": kVirusIcon,
    },
    {
      "name": "P-tau181 & GFAP",
      "category": "Dementia",
      "image": kBiomarker14,
      "icon": kMindIcon,
    },
  ];

  RxList<Map<String, dynamic>> bloodGlucoseHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit13
    },
    {"title": "Intermittent fasting", "added": false, "image": kHabit12},
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
    {
      "title": "Aerobic exercise - vigorous intensity",
      "added": true,
      "image": kHabit16
    },
    {"title": "Strength training", "added": true, "image": kHabit17},
  ].obs;

  RxList<Map<String, dynamic>> bloodPressureHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
    {
      "title": "Aerobic exercise - vigorous intensity",
      "added": true,
      "image": kHabit16
    },
    {"title": "Strength training", "added": true, "image": kHabit18},
    {"title": "Mindfulness", "added": true, "image": kHabit25},
  ].obs;

  RxList<Map<String, dynamic>> cortisolHabits = [
    {
      "title": "Wake up at an ideal time consistently",
      "added": false,
      "image": kHabit1
    },
    {
      "title": "Go to bed at an ideal time consistently",
      "added": false,
      "image": kHabit7
    },
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
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
    {"title": "Explore in nature", "added": false, "image": kHabit24},
    {"title": "Mindfulness", "added": true, "image": kHabit25},
    {"title": "Delay gratification", "added": true, "image": kHabit27},
    {"title": "Social connection", "added": true, "image": kHabit30},
  ].obs;

  RxList<Map<String, dynamic>> ctDnaHabits = [
    {
      "title": "Wake up at an ideal time consistently",
      "added": false,
      "image": kHabit1
    },
    {
      "title": "Go to bed at an ideal time consistently",
      "added": false,
      "image": kHabit7
    },
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
    {"title": "Intermittent fasting", "added": false, "image": kHabit13},
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
  ].obs;

  RxList<Map<String, dynamic>> dunedinHabits = [
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
    {
      "title": "Avoid caffeine and napping in late afternoon",
      "added": false,
      "image": kHabit3
    },
    {"title": "Wind down for sleep", "added": false, "image": kHabit4},
    {
      "title": "Dark, quiet, cool, comfy sleeping environment",
      "added": false,
      "image": kHabit5
    },
    {"title": "Calm the mind in bed", "added": false, "image": kHabit6},
    {
      "title": "Go to bed at an ideal time consistently",
      "added": false,
      "image": kHabit7
    },
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
    {"title": "Intermittent fasting", "added": false, "image": kHabit13},
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
    {"title": "Social interaction", "added": false, "image": kHabit20},
    {"title": "Motor skill training", "added": false, "image": kHabit21},
    {"title": "Analyze and learn", "added": false, "image": kHabit22},
    {"title": "Creative synthesis", "added": false, "image": kHabit23},
    {"title": "Explore in nature", "added": false, "image": kHabit24},
    {"title": "Mindfulness", "added": false, "image": kHabit25},
    {"title": "Self-reflection", "added": false, "image": kHabit26},
    {
      "title": "Plan goals and take action daily",
      "added": false,
      "image": kHabit27
    },
    {"title": "Delay gratification", "added": true, "image": kHabit28},
    {"title": "Gratitude", "added": true, "image": kHabit29},
    {"title": "Social connection", "added": true, "image": kHabit30},
  ].obs;
  RxList<Map<String, dynamic>> gfapHabits = [
    {
      "title": "Wake up at an ideal time consistently",
      "added": false,
      "image": kHabit1
    },
    {"title": "Calm the mind in bed", "added": false, "image": kHabit6},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {"title": "Intermittent fasting", "added": false, "image": kHabit13},
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
    {"title": "Social interaction", "added": false, "image": kHabit20},
    {"title": "Analyze and learn", "added": false, "image": kHabit22},
    {"title": "Creative synthesis", "added": false, "image": kHabit21},
    {
      "title": "Plan goals and take action daily",
      "added": false,
      "image": kHabit28
    },
    {"title": "Social connection", "added": false, "image": kHabit30},
  ].obs;
  RxList<Map<String, dynamic>> gripStrengthHabits = [
    {
      "title": "Wake up at an ideal time consistently",
      "added": false,
      "image": kHabit1
    },
    {
      "title": "Go to bed at an ideal time consistently",
      "added": false,
      "image": kHabit7
    },
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {"title": "Strength training", "added": false, "image": kHabit17},
  ].obs;
  RxList<Map<String, dynamic>> hsProteinHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
  ].obs;
  RxList<Map<String, dynamic>> nadHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {"title": "Intermittent fasting", "added": false, "image": kHabit13},
    {
      "title": "Wake up at an ideal time consistently",
      "added": false,
      "image": kHabit1
    },
    {
      "title": "Go to bed at an ideal time consistently",
      "added": false,
      "image": kHabit7
    },
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": true,
      "image": kHabit15
    },
    {"title": "Strength training", "added": true, "image": kHabit17},
  ].obs;
  RxList<Map<String, dynamic>> pbmcHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {"title": "Go outside for sunlight", "added": false, "image": kHabit12},
    {"title": "Intermittent fasting", "added": false, "image": kHabit13},
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": true,
      "image": kHabit15
    },
    {
      "title": "Aerobic exercise - vigorous intensity",
      "added": true,
      "image": kHabit16
    },
    {"title": "Explore in nature", "added": true, "image": kHabit24},
    {"title": "Mindfulness", "added": true, "image": kHabit25},
  ].obs;
  RxList<Map<String, dynamic>> plasmaHabits = [
    {
      "title": "Go to bed at an ideal time consistently",
      "added": false,
      "image": kHabit7
    },
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
    {"title": "Social interaction", "added": false, "image": kHabit20},
    {"title": "Motor skill training", "added": false, "image": kHabit21},
    {"title": "Analyze and learn", "added": false, "image": kHabit22},
    {"title": "Creative synthesis", "added": false, "image": kHabit23},
    {"title": "Explore in nature", "added": true, "image": kHabit24},
    {"title": "Mindfulness", "added": true, "image": kHabit25},
    {
      "title": "Plan goals and take action daily",
      "added": true,
      "image": kHabit28
    },
  ].obs;
  RxList<Map<String, dynamic>> waistToHipRatioHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {"title": "Intermittent fasting", "added": false, "image": kHabit13},
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
    {
      "title": "Aerobic exercise - vigorous intensity",
      "added": true,
      "image": kHabit16
    },
    {"title": "Strength training", "added": true, "image": kHabit17},
    {"title": "Move often", "added": true, "image": kHabit18},
    {
      "title": "Wake up at an ideal time consistently",
      "added": true,
      "image": kHabit1
    },
    {
      "title": "Go to bed at an ideal time consistently",
      "added": true,
      "image": kHabit7
    },
  ].obs;
  RxList<Map<String, dynamic>> triglyceridesHabits = [
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit8},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit9},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit10},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit11
    },
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    },
    {"title": "Move often", "added": false, "image": kHabit18},
  ].obs;

  RxList<Map<String, dynamic>> vo2MaxHabits = [
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit15
    }
  ].obs;

  void toggleHabit(int index, RxList<Map<String, dynamic>> list) {
    list[index]['added'] = !list[index]['added'];
    list.refresh();
  }
}
