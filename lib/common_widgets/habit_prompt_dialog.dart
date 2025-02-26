import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/screens/all_habits/sleep_habits_screen/controller/sleep_habits_controller.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';

class HabitPromptDialog extends StatelessWidget {

  HabitPromptDialog({super.key});

  SleepHabitController controller = Get.put(SleepHabitController());

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(4, 4),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: AppStyles().paddingAll24,
              child: Column(
                children: [
                  Text(
                    "What time will you do this habit?",
                    style: AppStyles.blackTextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: getHeight(12)),
                  CustomButton(title: "5 : 26 pm", onTap: (){},color: kWhiteColor,borderColor: kGreyShade7Color,showShadow: false,textColor: kPrimaryColor,textSize: 16,borderRadius: 9,width: MediaQuery.of(context).size.width,),
                  SizedBox(height: getHeight(24)),
                  Text(
                    "What days will you do this habit?",
                    style: AppStyles.blackTextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: getHeight(12)),
                  Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: controller.weekdays.map((day) {
                      return GestureDetector(
                        onTap: () => controller.toggleWeekday(day),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: controller.selectedWeekdays.contains(day)
                                  ? kPrimaryColor
                                  : kGreyShade11Color,
                              boxShadow: AppStyles.buttonShadow1
                          ),
                          child: Center(child: Text(day[0],style: AppStyles.whiteTextStyle().copyWith(
                              fontWeight: FontWeight.w600,
                              color: controller.selectedWeekdays.contains(day) ? kWhiteColor : kBlackColor
                          ),)),
                        ),
                      );
                    }).toList(),
                  )),
                  SizedBox(height: getHeight(12)),
                  Text(
                    "Everyday",
                    style: AppStyles.blackTextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: getHeight(24)),
                  Row(
                    children: [
                      Text(
                        "Habit prompt",
                        style: AppStyles.blackTextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: getHeight(12)),
                  Obx(() => GestureDetector(
                    onTap: () => controller.toggleReminderVisibility(),
                    child: Container(
                      height: getHeight(33),
                      width: getWidth(156),
                      decoration: BoxDecoration(
                          color: controller.isReminderEnabled.value ? kPrimaryColor : kGreyShade11Color,
                          borderRadius: BorderRadius.circular(47),
                          border: Border.all(color: controller.isReminderEnabled.value ? kPrimaryColor : kGreyShade11Color,),
                          boxShadow: AppStyles.buttonShadow1
                      ),
                      child: Center(
                        child: Text(
                          controller.isReminderEnabled.value ? "Enabled" :"Enable prompt",
                          style: AppStyles.whiteTextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.w600,color: controller.isReminderEnabled.value ? kWhiteColor : kBlackTextColor),
                        ),
                      ),
                    ),
                  ),),
                  Obx(() => controller.isReminderEnabled.value ?
                  Column(
                    children: [
                      SizedBox(height: getHeight(24)),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "How many minutes before this habit's time do you want to be reminded?",
                              textAlign: TextAlign.start,
                              style: AppStyles.blackTextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(12)),
                      Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: controller.reminderMinutes.map((minutes) {
                          return GestureDetector(
                            onTap: () => controller.toggleReminder(minutes),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: controller.selectedReminders.contains(minutes)
                                      ? kPrimaryColor
                                      : kGreyShade11Color,
                                  boxShadow: AppStyles.buttonShadow1
                              ),
                              child: Center(child: Text(minutes.toString(),style: AppStyles.whiteTextStyle().copyWith(
                                  color: controller.selectedReminders.contains(minutes) ? kWhiteColor : kBlackColor,
                                  fontWeight: FontWeight.w600
                              ),)),
                            ),
                          );
                        }).toList(),
                      )),
                    ],
                  ) : SizedBox(),),
                ],
              ),
            ),
            SizedBox(height: getHeight(18)),
            Container(
              height: 79,
              decoration: BoxDecoration(
                color: kLightBlueColor1,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9),bottomRight: Radius.circular(9)),

              ),
              child: Padding(
                padding: AppStyles().paddingHorizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      title: "Back",
                      onTap: (){
                        Get.back();
                      },
                      color: kWhiteColor,
                      borderColor: kWhiteColor,
                      textColor: kBlackTextColor,
                      height: getHeight(44),
                      width: getWidth(95),
                      showShadow: false,
                    ),
                    CustomButton(
                      title: "Save",
                      onTap: (){},
                      height: getHeight(44),
                      width: getWidth(95),
                      showShadow: false,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

