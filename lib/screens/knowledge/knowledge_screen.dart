import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/premium_dialog.dart';
import 'package:healink_app/screens/knowledge/audio_player_screen.dart';
import 'package:healink_app/screens/knowledge/controller/knowledge_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class KnowledgeScreen extends StatelessWidget {
  final KnowledgeController controller = Get.find();

  KnowledgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
          child: Column(
            children: [
              SizedBox(height: getHeight(74)),
              Text(
                "Knowledge bank",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: getHeight(30)),
              _buildCoursesSection(),
              _buildSubscriptionCard(),
              SizedBox(height: getHeight(24)),
              _buildCategoriesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCoursesSection() {
    return Obx(() {
      return Column(
        children: controller.courses.asMap().entries.map((entry) {
          int index = entry.key;
          var course = entry.value;
          return Padding(
            padding: EdgeInsets.only(bottom: getHeight(26)),
            child: InkWell(
              onTap: () {
                Get.to(() => AudioPlayerScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: course.containsKey("bgImg")
                      ? DecorationImage(
                          image: AssetImage(course["bgImg"] as String),
                          fit: BoxFit.cover)
                      : null,
                  color: kWhiteColor,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(24), vertical: getHeight(14)),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course["title"]!,
                            style: AppStyles.blackTextStyle().copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: getHeight(7)),
                          if (course.containsKey("subtitle"))
                            Text(
                              course["subtitle"]!,
                              style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          SizedBox(height: getHeight(7)),
                          if (course.containsKey("detail"))
                            Row(
                              children: [
                                index == 0
                                    ? Image.asset(
                                        kBookIcon,
                                        height: getHeight(20),
                                        width: getWidth(20),
                                      )
                                    : Icon(
                                        Icons.play_arrow,
                                        color: kPrimaryColor,
                                      ),
                                SizedBox(width: getWidth(5)),
                                Text(
                                  course["detail"]!,
                                  style: AppStyles.primaryTextStyle().copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    if (course.containsKey("image"))
                      Image.asset(course["image"]!, height: getHeight(55)),
                    if (index == 0)
                      Icon(
                        Icons.more_vert,
                        color: kPrimaryColor,
                      ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      );
    });
  }

  Widget _buildSubscriptionCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(21), vertical: getHeight(24)),
      decoration: BoxDecoration(
        color: kWhiteColor,
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "Join Healink",
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: getHeight(7)),
          Text(
            "Subscribe today for\nunlimited access to the app",
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: getHeight(18)),
          CustomButton(
              height: 48,
              title: "Get Started",
              onTap: () {
                showPremiumDialog();
              })
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Obx(() {
      return Column(
        children: controller.categories.asMap().entries.map((entry) {
          int index = entry.key;
          var category = entry.value;
          return Padding(
            padding: EdgeInsets.only(bottom: getHeight(20)),
            child: InkWell(
              onTap: () {
                List<String> categoryRoutes = [
                  kSleepGuideScreenRoute,
                  kStimulationGuideScreenRoute,
                  kNutritionGuideScreenRoute,
                  kResilienceGuideScreenRoute,
                  kExerciseGuideScreenRoute
                ];

                if (index < categoryRoutes.length) {
                  Get.toNamed(categoryRoutes[index]);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: category["color"] as Color,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getHeight(103),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(category["image"] as String),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(19),
                              topRight: Radius.circular(19))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getWidth(18),
                                vertical: getHeight(11)),
                            decoration: BoxDecoration(
                              color: category['color'] as Color,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(19)),
                            ),
                            child: Text(
                              "${category["title"]}",
                              style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: getHeight(2)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getHeight(28),
                                width: getWidth(28),
                                margin: EdgeInsets.only(right: getWidth(23)),
                                decoration: BoxDecoration(
                                    color: category['color'] as Color,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: kWhiteColor.withOpacity(0.3),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: const Offset(0, 0))
                                    ]),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: kWhiteColor,
                                  size: 18.sp,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getHeight(10)),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getWidth(16), right: getWidth(40)),
                      child: Text(
                        "${category["description"]}",
                        style: AppStyles.whiteTextStyle().copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: getHeight(10)),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
