import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class InsightController extends GetxController {

  var badges = <Map<String, dynamic>>[
    {"image": kPowerImage, "progress": 0.2},
    {"image": kMindImage, "progress": 0.3},
    {"image": kSuitPersonImage, "progress": 0.5},
    {"image": kSuccessPersonImage, "progress": 0.4},
    {"image": kTraderPersonImage, "progress": 0.1},
    {"image": kJwellerPersonImage, "progress": 0.8},
    {"image": kOfficeBossImage, "progress": 0.25},
    {"image": kOfficeMateImage, "progress": 0.7},
    {"image": kOfficeMate1Image, "progress": 0.45},
    {"image": kDevelImage, "progress": 0.3},
    {"image": kGokuImage, "progress": 0.6},
    {"image": kMagicianImage, "progress": 0.35},
  ].obs;

  RxList<int> healthData = [2, 2, 2, 2, 4, 100, 3].obs;
  RxList<String> days = ["Fri", "Sat", "Sun", "Mon", "Tue", "Wed", "Thu"].obs;
  RxList<String> dates = ["24", "25", "26", "27", "28", "29", "30"].obs;

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
