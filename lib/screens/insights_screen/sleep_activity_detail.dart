import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../common_widgets/Insight_dialog.dart';
import '../../utils/app_strings.dart';
import 'controller/insight_controller.dart';

class SleepActivityDetailScreen extends GetView<InsightController> {
  const SleepActivityDetailScreen({super.key});

  void insightDialog() {
    Get.dialog(
      InfoDialog(
        onClose: () => Get.close(1),
      ),
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: kWhiteColor,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.only(left: getWidth(24)),
              child: Center(
                  child: Image.asset(
                kArrowIcon,
                height: 16,
                width: 16,
              )),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                insightDialog();
              },
              child: Padding(
                padding: EdgeInsets.only(right: getWidth(24)),
                child: Image.asset(
                  kInfoIcon,
                  height: getHeight(25),
                  width: getWidth(25),
                ),
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: AppStyles().paddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        kSleep1Image,
                        height: 157,
                        width: 157,
                      ),
                      SizedBox(
                        height: getHeight(13),
                      ),
                      Text(
                        "0 % ",
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 25.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: getHeight(21),
                      ),
                      Container(
                        height: getHeight(25),
                        width: getWidth(85),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: kLightRedColor1,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: getWidth(8)),
                          child: Center(
                              child: Text(
                            "Very Poor",
                            style: AppStyles.primaryTextStyle().copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(24),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up_outlined,
                            size: 16,
                            color: kGreenColor,
                          ),
                          Text(
                            "0 % ",
                            style: AppStyles.blackTextStyle()
                                .copyWith(fontSize: 14.sp, color: kGreenColor),
                          ),
                          Text(
                            "from last week",
                            style: AppStyles.blackTextStyle()
                                .copyWith(fontSize: 14.sp,color: kBlackTextColor.withOpacity(0.6)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(24),
                      ),
                      SizedBox(
                        height: getHeight(50),
                        width: getWidth(206),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Highest",
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(fontSize: 14,color: kBlackTextColor.withOpacity(0.6)),
                                ),
                                Text(
                                  "3 %",
                                  style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Container(
                              height: getHeight(30),
                              width: getWidth(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: kBlackTextColor,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Avg. user",
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(fontSize: 14,color: kBlackTextColor.withOpacity(0.6)),
                                ),
                                Text(
                                  "3 %",
                                  style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(24),
                  ),
                  Text(
                    "Why Sleep?",
                    style: AppStyles.primaryTextStyle().copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(16),
                  ),
                  Text(
                    "Sleep has restorative functions such as protein synthesis, tissue repair, and growth hormone release. Aside from the many restorative functions, sleep also allows for information processing and consolidating new memories. "
                    "\n\nIndividuals with short, disrupted, or inconsistent sleep have shorter lifespans, health-spans, lower mood, and diminished cognitive functioning (memory, attention, processing speed, judgment, decision making, etc.), physical performance, emotional regulation, and abnormal metabolism. "
                    "\n\nPoor sleep contributes to all causes of mortality such as cancers, heart diseases, dementia, diabetes, obesity, and more. Most people do not get adequate sleep quality, consistency, or duration, compromising well-being. "
                    "\n\nCeasing technology use prior to bed, learning how to control pre-sleep cognitions, and waking at a consistent time daily all support sleep.",
                    style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(24),
                  ),
                  Text(
                    "Sleep habits",
                    style: AppStyles.primaryTextStyle().copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(16),
                  ),
                  Obx(
                    () => ListView.builder(
                      padding: EdgeInsetsDirectional.all(0),
                      shrinkWrap: true,
                      itemCount: controller.sleepTips.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final data = controller.sleepTips[index];
                        return GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Get.toNamed(kFirstSleepHabitDetailRoute);
                            } else if (index == 1) {
                              Get.toNamed(kSecondSleepHabitDetailRoute);
                            } else if (index == 2) {
                              Get.toNamed(kThirdSleepHabitDetailRoute);
                            } else if (index == 3) {
                              Get.toNamed(kFourthSleepHabitDetailRoute);
                            } else if (index == 4) {
                              Get.toNamed(kFifthSleepHabitDetailRoute);
                            } else if (index == 5) {
                              Get.toNamed(kSixthSleepHabitDetailRoute);
                            } else if (index == 6) {
                              Get.toNamed(kSeventhSleepHabitDetailRoute);
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.only(bottom: getHeight(19)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 23,
                                  backgroundImage: AssetImage(data['image']),
                                ),
                                SizedBox(
                                  width: getWidth(12),
                                ),
                                Expanded(
                                    child: Text(
                                  data['tip'],
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                                SizedBox(
                                  width: getWidth(12),
                                ),
                                CustomButton(
                                  title: data["isAdded"] ? "Added" : "+ Add",
                                  onTap: () =>
                                      controller.toggleSleepAdded(index),
                                  width: getWidth(data["isAdded"] ? 84 : 53),
                                  height: getHeight(26),
                                  isImage: data["isAdded"] ? true : false,
                                  image: kTrueIcon,
                                  showShadow: false,
                                  textColor: data["isAdded"]
                                      ? kGreenColor
                                      : kWhiteColor,
                                  borderColor: data["isAdded"]
                                      ? kLightGreenColor1
                                      : kPrimaryColor,
                                  color: data["isAdded"]
                                      ? kLightGreenColor1
                                      : kPrimaryColor,
                                  textSize: 14,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: getHeight(26),
                  ),
                  CustomButton(
                    width: MediaQuery.of(context).size.width,
                    title: "Close",
                    onTap: () {
                      Get.back();
                    },
                    showShadow: false,
                    borderColor: kPrimaryColor,
                    color: kWhiteColor,
                    textColor: kPrimaryColor,
                  ),
                  SizedBox(
                    height: getHeight(19),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
