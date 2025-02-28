import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class InsightController extends GetxController {

  var badges = <Map<String, dynamic>>[
    {"image": kPowerImage, "progress": 0.2,"title": "Together" , "detail" : "Add 5 friend","totalAward" : "5", "achieved" : "3" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "1","totalSilver" : "5" , "totalGold" : "10"},
    {"image": kMindImage, "progress": 0.3,"title": "Limitless" , "detail" : "Complete Cognitive Stimulation habits 50 times","totalAward" : "50", "achieved" : "3" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "50","totalSilver" : "250" , "totalGold" : "500"},
    {"image": kSuitPersonImage, "progress": 0.5,"title": "Unstoppable" , "detail" : "Log in to Healink 20 times","totalAward" : "20", "achieved" : "13" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "1","totalSilver" : "20" , "totalGold" : "100"},
    {"image": kSuccessPersonImage, "progress": 0.4,"title": "Nourish" , "detail" : "Complete Nutrition habits 50 times","totalAward" : "50", "achieved" : "3" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "50","totalSilver" : "250" , "totalGold" : "500"},
    {"image": kTraderPersonImage, "progress": 0.1,"title": "Trancendence" , "detail" : "Complete all Healink habits daily","totalAward" : "15", "achieved" : "3" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "1","totalSilver" : "15" , "totalGold" : "200"},
    {"image": kJwellerPersonImage, "progress": 0.8,"title": "Resurrection" , "detail" : "Get a 7-day streak on a habit you once struggled with","totalAward" : "20", "achieved" : "10" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "7","totalSilver" : "20" , "totalGold" : "100"},
    {"image": kOfficeBossImage, "progress": 0.25,"title": "Scholar" , "detail" : "Complete 5 guided sessions","totalAward" : "20", "achieved" : "10" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "5","totalSilver" : "20" , "totalGold" : "100"},
    {"image": kOfficeMateImage, "progress": 0.7,"title": "Credible" , "detail" : "Complete your daily routine 10 times","totalAward" : "100", "achieved" : "10" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "10","totalSilver" : "100" , "totalGold" : "300"},
    {"image": kOfficeMate1Image, "progress": 0.45,"title": "People's Champion" , "detail" : "Cheer people 10 times","totalAward" : "50", "achieved" : "10" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "10","totalSilver" : "50" , "totalGold" : "500"},
    {"image": kDevelImage, "progress": 0.3,"title": "Regeneration" , "detail" : "Complete Sleep habits 50 times","totalAward" : "250", "achieved" : "51" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "50","totalSilver" : "250" , "totalGold" : "500"},
    {"image": kGokuImage, "progress": 0.6,"title": "Vigour" , "detail" : "Complete Exercise habits 50 times","totalAward" : "250", "achieved" : "101" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "50","totalSilver" : "250" , "totalGold" : "500"},
    {"image": kMagicianImage, "progress": 0.35,"title": "Warrior of the Mind" , "detail" : "Complete Resilience habits 50 times","totalAward" : "150", "achieved" : "101" ,"isBronze" : true, "isSilver" : false, "isGold" : false,"totalBronze" : "50","totalSilver" : "250" , "totalGold" : "500"},
  ].obs;

  RxList<int> healthData = [20, 20, 20, 20, 40, 100, 30].obs;
  RxList<String> days = ["Fri", "Sat", "Sun", "Mon", "Tue", "Wed", "Thu"].obs;
  RxList<String> dates = ["24", "25", "26", "27", "28", "29", "30"].obs;
  var sleepTips = <Map<String, dynamic>>[
    {"tip": "Avoid caffeine and napping in late afternoon", "image": kSleepImage1, "isAdded": false},
    {"tip": "Dark, quiet, cool, comfy sleeping environment", "image": kSleepImage2, "isAdded": false},
    {"tip": "Wake up at an ideal time consistently", "image": kSleepImage3, "isAdded": false},
    {"tip": "Use the bedroom for sleep only", "image": kSleepImage4, "isAdded": false},
    {"tip": "Calm the mind in bed", "image": kSleepImage5, "isAdded": false},
    {"tip": "Wind down for sleep", "image": kSleepImage6, "isAdded": false},
    {"tip": "Go to bed at an ideal time consistently", "image": kSleepImage7, "isAdded": true},
  ].obs;
  var simulationTips = <Map<String, dynamic>>[
    {"tip": "Social interaction", "image": kSimulationImage1, "isAdded": false},
    {"tip": "Motor skill training", "image": kSimulationImage3, "isAdded": false},
    {"tip": "Analyze and learn", "image": kSimulationImage4, "isAdded": false},
    {"tip": "Creative synthesis", "image": kSimulationImage2, "isAdded": false},
    {"tip": "Explore in nature", "image": kSimulationImage5, "isAdded": true},
  ].obs;
  var nutritionTips = <Map<String, dynamic>>[
    {"tip": "Eat a healthy breakfast", "image": kNutritionImage1, "isAdded": false},
    {"tip": "Eat a healthy lunch", "image": kNutritionImage2, "isAdded": false},
    {"tip": "Eat a healthy dinner", "image": kNutritionImage3, "isAdded": false},
    {"tip": "Avoid junk food, alcohol, and nicotine", "image": kNutritionImage4, "isAdded": false},
    {"tip": "Go outside for sunlight", "image": kNutritionImage5, "isAdded": true},
    {"tip": "Intermittent fasting", "image": kNutritionImage6, "isAdded": true},
    {"tip": "Adequately hydrate", "image": kNutritionImage7, "isAdded": true},
  ].obs;
  var resilienceTips = <Map<String, dynamic>>[
    {"tip": "Mindfulness", "image": kResilienceImage1, "isAdded": false},
    {"tip": "Self-reflection", "image": kResilienceImage2, "isAdded": false},
    {"tip": "Delay gratification", "image": kResilienceImage3, "isAdded": false},
    {"tip": "Plan goals and take action daily", "image": kResilienceImage4, "isAdded": false},
    {"tip": "Gratitude", "image": kResilienceImage5, "isAdded": true},
    {"tip": "Social connection", "image": kResilienceImage6, "isAdded": true},
  ].obs;
  var exerciseTips = <Map<String, dynamic>>[
    {"tip": "Aerobic exercise - moderate intensity", "image": kExerciseImage1, "isAdded": false},
    {"tip": "Aerobic exercise - vigorous intensity", "image": kExerciseImage2, "isAdded": false},
    {"tip": "Strength training", "image": kExerciseImage4, "isAdded": false},
    {"tip": "Move often", "image": kExerciseImage3, "isAdded": false},
    {"tip": "Stretching & posture", "image": kExerciseImage5, "isAdded": true},
  ].obs;

  void toggleSleepAdded(int index) {
    sleepTips[index]["isAdded"] = !sleepTips[index]["isAdded"];
    sleepTips.refresh();
  }
  void toggleSimulationAdded(int index) {
    simulationTips[index]["isAdded"] = !simulationTips[index]["isAdded"];
    simulationTips.refresh();
  }
  void toggleNutritionAdded(int index) {
    nutritionTips[index]["isAdded"] = !nutritionTips[index]["isAdded"];
    nutritionTips.refresh();
  }
  void toggleResilienceAdded(int index) {
    resilienceTips[index]["isAdded"] = !resilienceTips[index]["isAdded"];
    resilienceTips.refresh();
  }
  void toggleExerciseAdded(int index) {
    exerciseTips[index]["isAdded"] = !exerciseTips[index]["isAdded"];
    exerciseTips.refresh();
  }

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
      Get.dialog(
        Dialog(
          backgroundColor: Colors.white,
          insetPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          child: achievementDialog(),
        ),
        barrierDismissible: false,
      );
    });
  }

  Widget achievementDialog (){
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsDirectional.all(14),
        child: Column(
          children: [
            SizedBox(height: getHeight(88),),
            SizedBox(
              height: getHeight(250),
              width: getWidth(217),
              child: Image.asset(kSuccessPersonImage,fit: BoxFit.contain,),
            ),
            SizedBox(height: getHeight(40),),
            Text("New Achievement!",style: AppStyles.blackTextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w700),),
            SizedBox(height: getHeight(14),),
            SizedBox(
                height: getHeight(30),
                width: getWidth(111),
                child: Image.asset(kAchieveImage,fit: BoxFit.cover,)),
            SizedBox(height: getHeight(33),),
            Text("You have earned the Bronze Nourish Badge:",style: AppStyles.blackTextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
            SizedBox(height: getHeight(20),),
            Text("Complete Nutrition habits 50 times",style: AppStyles.blackTextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: getHeight(114),),
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: CircleAvatar(
                radius: 18,
                backgroundColor: kGreyShade5Color,
                child: Center(child: Icon(Icons.close,size: 16,color: kWhiteColor,)),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
