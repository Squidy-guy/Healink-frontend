import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/guides/controller/sleep_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SleepGuideScreen extends StatelessWidget {
  final SleepController controller = Get.find();

  SleepGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getHeight(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: getHeight(16)),
            _buildSleepDescription(),
            SizedBox(height: getHeight(20)),
            _buildSessionsList(),
            SizedBox(height: getHeight(20)),
            _buildSleepHabits(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: getHeight(197),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(24), vertical: getHeight(24)),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(kCategory1), fit: BoxFit.cover),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(80))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Container(
                height: getHeight(28),
                width: getWidth(28),
                decoration:
                    BoxDecoration(color: kWhiteColor, shape: BoxShape.circle),
                child: Icon(Icons.close, color: kBlackTextColor, size: 18.sp)),
          ),
          Text(
            "Sleep",
            style: AppStyles.whiteTextStyle()
                .copyWith(fontSize: 22.sp, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _buildSleepDescription() {
    return Obx(() {
      return Column(
        children: [
          if (!controller.isExpanded.value)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHeight(22)),
              child: Text(
                """
Sleep has restorative functions such as protein synthesis, tissue repair, and growth hormone release. Aside from the many restorative functions, sleep also allows for information processing and consolidating new memories.
""",
                style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
              ),
            ),
          if (controller.isExpanded.value)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHeight(22)),
              child: Text(
                """
Sleep has restorative functions such as protein synthesis, tissue repair, and growth hormone release. Aside from the many restorative functions, sleep also allows for information processing and consolidating new memories.

Individuals with short, disrupted, or inconsistent sleep have shorter lifespans, health-spans, lower mood, and diminished cognitive functioning (memory, attention, processing speed, judgment, decision making, etc.), physical performance, emotional regulation, and abnormal metabolism.

Poor sleep contributes to all causes of mortality such as cancers, heart diseases, dementia, diabetes, obesity, and more. Most people do not get adequate sleep quality, consistency, or duration, compromising well-being.

Ceasing technology use prior to bed, learning how to control pre-sleep cognitions, and waking at a consistent time daily all support sleep.
""",
                style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
              ),
            ),
          Center(
            child: CustomButton(
              height: 48,
              width: 241,
              borderColor: kPrimaryColor,
              textColor: kPrimaryColor,
              color: kBgColor,
              showShadow: false,
              title: controller.isExpanded.value ? "Show Less" : "Show More",
              onTap: controller.toggleExpand,
            ),
          )
        ],
      );
    });
  }

  // 🔹 Sleep Sessions List
  Widget _buildSessionsList() {
    List<Map<String, String>> sessions = [
      {
        "title": "Circadian Rhythm and Chronotype",
        "description":
            "Having consistent sleep-wake timing is crucial for optimal health. Our circadian rhythm regulates hormone activity, body temperature, hunger, digestion, and metabolic processes...",
      },
      {
        "title": "Preparing for Sleep",
        "description":
            "Video games, social interactions, news consumption, and social media use within 30 minutes of bedtime typically activate our sympathetic nervous system...",
      },
      {
        "title": "Calm Mind for Sleep",
        "description":
            "While in bed intending to sleep, it is helpful to activate the parasympathetic nervous system and still the mind to replace stress, excitement, brainstorming, worry, or rumination...",
      },
      {
        "title": "Sleep Hygiene in the Bedroom",
        "description":
            "Using the bedroom for activities other than sleep (and sexual activity) can make us associate the bed and bedroom with wakefulness and make it harder to sleep...",
      },
      {
        "title": "Optimal Sleeping Environment",
        "description":
            "The optimal sleeping environment is a quiet, dark room that is cool (15-19 degrees Celsius), and has a comfortable mattress...",
      },
      {
        "title": "Napping and Caffeine",
        "description":
            "Caffeine can disrupt our circadian rhythm timing and reduce deep sleep periods and total sleep time significantly...",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sleep Sessions",
            style: AppStyles.primaryTextStyle()
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: getHeight(12)),
        ...sessions.map((session) => Padding(
              padding: EdgeInsets.only(bottom: getHeight(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(session["title"]!,
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                  SizedBox(height: getHeight(6)),
                  Text(session["description"]!,
                      style: AppStyles.blackTextStyle()
                          .copyWith(fontSize: 14.sp, color: kGreyShade8Color)),
                  Divider(color: kGreyShade10Color),
                ],
              ),
            )),
      ],
    );
  }

  // 🔹 Sleep Habits List
  Widget _buildSleepHabits() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sleep Habits",
            style: AppStyles.primaryTextStyle()
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: getHeight(12)),
        Obx(() {
          return Column(
            children: List.generate(controller.sleepHabits.length, (index) {
              var habit = controller.sleepHabits[index];
              return Padding(
                padding: EdgeInsets.only(bottom: getHeight(10)),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: kPrimaryColor, size: 18.sp),
                    SizedBox(width: getWidth(10)),
                    Expanded(
                      child: Text(
                        habit["title"],
                        style: AppStyles.blackTextStyle()
                            .copyWith(fontSize: 16.sp),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.toggleHabit(index),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: getWidth(10), vertical: getHeight(6)),
                        decoration: BoxDecoration(
                          color: habit["added"] ? kGreenColor : kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          habit["added"] ? "✓ Added" : "+ Add",
                          style: AppStyles.whiteTextStyle()
                              .copyWith(fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        }),
      ],
    );
  }
}
