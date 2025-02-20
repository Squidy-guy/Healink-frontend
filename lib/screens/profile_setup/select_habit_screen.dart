import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/app_strings.dart';
import 'controller/habit_controller.dart';

class HabitSelectionScreen extends StatelessWidget {
  final HabitController controller = Get.find();

  HabitSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  kPrimaryColor,
                  kShadow1Color,
                  kShadow2Color.withOpacity(0.97)
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getHeight(57)),
                      Text("Let's make\nhabits together",
                          style: AppStyles.whiteTextStyle().copyWith(
                              fontWeight: FontWeight.w700, fontSize: 20.sp)),
                      SizedBox(height: getHeight(16)),
                      Text(
                        "Start by choosing 3 habits that you're\nmotivated to do and think are easy.",
                        style: AppStyles.whiteTextStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: getHeight(0),
            right: getWidth(0),
            left: getWidth(0),
            child: Container(
              padding: EdgeInsets.only(top: getHeight(10)),
              height: getHeight(550),
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(24), vertical: getHeight(14)),
                itemCount: controller.habits.length + 1,
                itemBuilder: (context, index) {
                  if (index == controller.habits.length) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHeight(66)),
                      child: Obx(
                        () => CustomButton(
                          height: 46,
                          width: 260,
                          textColor: kPrimaryColor,
                          textSize: 16,
                          title: controller.selectedHabits.length ==
                                  controller.habits.length
                              ? 'Deselect All'
                              : 'Select All',
                          onTap: controller.selectAllHabits,
                          color: kBgColor,
                          borderColor: kPrimaryColor,
                          showShadow: false,
                        ),
                      ),
                    );
                  }

                  var habit = controller.habits[index];
                  return GestureDetector(
                      onTap: () => controller.toggleHabit(habit['name']),
                      child: Obx(
                        () => Container(
                          margin: EdgeInsets.only(bottom: getHeight(20)),
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(16),
                              vertical: getHeight(20)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(getWidth(24)),
                            border: controller.selectedHabits
                                    .contains(habit['name'])
                                ? Border.all(color: kBlackTextColor, width: 2)
                                : Border.all(color: kWhiteColor),
                          ),
                          child: Row(
                            children: [
                              Image.asset(habit['icon'],
                                  width: getWidth(48), height: getWidth(48)),
                              SizedBox(width: getWidth(22)),
                              SizedBox(
                                width: getWidth(233),
                                child: Text(
                                  habit['name'],
                                  maxLines: 2,
                                  style: AppStyles.blackTextStyle().copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: getHeight(100),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.1),
                offset: const Offset(0, -2),
                blurRadius: 10.6,
                spreadRadius: 2,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "${controller.selectedHabits.length}/30",
              style: AppStyles.blackTextStyle()
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 18.sp),
            )),
            SizedBox(height: getHeight(10)),
            Obx(
                  () => controller.selectedHabits.length >= 3
                  ? CustomButton(
                height: 48,
                width: 267,
                title: "Continue",
                onTap: () {
                  Get.toNamed(kInsightScreenRoute);
                },
              )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}

