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
    {"title": "Eat a healthy breakfast", "added": false, "image": kHabit20},
    {"title": "Eat a healthy lunch", "added": false, "image": kHabit20},
    {"title": "Eat a healthy dinner", "added": false, "image": kHabit20},
    {
      "title": "Avoid junk food, alcohol, and nicotine",
      "added": false,
      "image": kHabit20
    },
    {"title": "Intermittent fasting", "added": false, "image": kHabit20},
    {
      "title": "Aerobic exercise - moderate intensity",
      "added": false,
      "image": kHabit20
    },
    {
      "title": "Aerobic exercise - vigorous intensity",
      "added": true,
      "image": kHabit20
    },
    {"title": "Strength training", "added": true, "image": kHabit20},
  ].obs;

  void toggleHabit(int index, RxList<Map<String, dynamic>> list) {
    list[index]['added'] = !list[index]['added'];
    list.refresh();
  }
}
