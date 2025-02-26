import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';

import '../../../common_widgets/activity_model_button.dart';
import '../../../common_widgets/triangle_container.dart';
import '../../../common_widgets/warning_dialog.dart';
import 'controller/stim_habit_controller.dart';

class FirstStimulationHabitDetail extends GetView<StimulationHabitController> {
  const FirstStimulationHabitDetail({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                height: getHeight(183),
                child: Stack(
                  children: [
                    SizedBox(
                      height: getHeight(193),
                      width: width,
                      child: Image.asset(kScenery4Image,fit: BoxFit.cover,),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: AppStyles().paddingHorizontal15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.back();
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: kWhiteColor,
                                child: Center(child: Image.asset(kArrowIcon,height: getHeight(20),width: getWidth(20))),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.dialog(
                                  WarningDialog(
                                      action: (){},
                                      title: "Focus habit",
                                      detail: "Do you want to set this habit as your focus? Doing so will replace your current focus habit.", actionText: "Yes"),
                                  barrierDismissible: false,
                                );
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: kWhiteColor,
                                child: Center(child: Image.asset(kStarIcon,height: getHeight(20),width: getWidth(20),color: kBlackTextColor,)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: getHeight(139),
                left: 0,
                right: 0,
                child: Container(
                  height: getHeight(136),
                  width: width,
                  decoration: BoxDecoration(
                      color: kBlueShade1Color,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(24),vertical: getHeight(15)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundImage: AssetImage(kSimulationImage1),
                            ),
                            SizedBox(width: getWidth(12),),
                            Expanded(child: Text("Social interaction",style: AppStyles.whiteTextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.w700,),)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: getHeight(228),
                left: 0,
                right: 0,
                child: Container(
                  width: width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: kBgColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: AppStyles().paddingHabitColumn,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() => controller.isVisible.value ? SizedBox(
                            height: getHeight(335),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: getHeight(316),
                                    width: width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: kWhiteColor,
                                        border: Border.all(color: kBlueShade1Color,width: getWidth(4))
                                    ),
                                    child: Padding(
                                      padding: AppStyles().paddingAll15,
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: getHeight(9)),
                                                child: SizedBox(
                                                  height: getHeight(188),
                                                  width: getWidth(125),
                                                  child: Image.asset(kAlienAvatarImage,fit: BoxFit.contain,),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: getHeight(46)),
                                                child: TriangleWidget(color: kBlueShade1Color),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  height: getHeight(210),
                                                  decoration: BoxDecoration(
                                                      color: kBlueShade1Color,
                                                      borderRadius: BorderRadius.circular(8)
                                                  ),
                                                  child: Scrollbar(
                                                    thumbVisibility: true,
                                                    thickness: getWidth(4),
                                                    radius: Radius.circular(8),
                                                    controller: controller.scrollController,
                                                    child: SingleChildScrollView(
                                                      controller: controller.scrollController,
                                                      child: Padding(
                                                          padding: EdgeInsets.all(getWidth(12)),
                                                          child: Obx(() => Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                controller.currentMessage,
                                                                style: AppStyles.whiteTextStyle().copyWith(
                                                                    fontWeight: FontWeight.w600, fontSize: 15.3),
                                                              ),
                                                              if (controller.currentMessageIndex.value == 1 ||
                                                                  controller.currentMessageIndex.value == 6 ||
                                                                  controller.currentMessageIndex.value == 7)
                                                                SizedBox(height: getHeight(10),),
                                                              if (controller.currentMessageIndex.value == 1)
                                                                CustomModelButton(onTap: (){
                                                                  Get.dialog(
                                                                    WarningDialog(
                                                                        action: (){},
                                                                        title: "Remove habit",
                                                                        detail: "Do you want to remove this habit from your routine?", actionText: "Remove"),
                                                                    barrierDismissible: false,
                                                                  );
                                                                }, text: "Remove"),
                                                              if (controller.currentMessageIndex.value == 1)
                                                                SizedBox(height: getHeight(10),),
                                                              if (controller.currentMessageIndex.value == 1)
                                                                CustomModelButton(onTap: (){
                                                                  Get.dialog(
                                                                    WarningDialog(
                                                                        action: (){},
                                                                        title: "Focus habit",
                                                                        detail: "Do you want to set this habit as your focus? Doing so will replace your current focus habit.", actionText: "Yes"),
                                                                    barrierDismissible: false,
                                                                  );
                                                                }, text: "Focus"),
                                                              if (controller.currentMessageIndex.value == 6)
                                                                CustomModelButton(onTap: (){}, text: "Guide"),
                                                              if (controller.currentMessageIndex.value == 7)
                                                                CustomModelButton(onTap: (){}, text: "Prompt"),
                                                            ],
                                                          ),)
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: getHeight(22),),
                                          Row(
                                              mainAxisAlignment: controller.currentMessageIndex.value == 0 ? MainAxisAlignment.end : MainAxisAlignment.spaceBetween,
                                              children: [
                                                controller.currentMessageIndex.value == 0 ? SizedBox() : CustomButton(
                                                  title: "Back",
                                                  onTap: controller.previousMessage,
                                                  showShadow: false,
                                                  width: getWidth(96),
                                                  height: getHeight(45),
                                                  textColor: kBlackTextColor,
                                                  color: kGreyShade16Color,
                                                  borderColor: kGreyShade16Color,
                                                  textSize: 17,
                                                ),
                                                Obx(() => CustomButton(
                                                  title: controller.currentMessageIndex.value == controller.messages.length - 1 ? "Done" : "Next",
                                                  onTap: controller.nextMessage,
                                                  borderColor: controller.currentMessageIndex.value == controller.messages.length - 1 ? kFeroziColor : kPrimaryColor,
                                                  showShadow: false,
                                                  width: getWidth(96),
                                                  height: getHeight(45),
                                                  textSize: 17,
                                                  color: controller.currentMessageIndex.value == controller.messages.length - 1 ? kFeroziColor : kPrimaryColor,
                                                ),)
                                              ]
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: getWidth(28),
                                  child: SizedBox(
                                      width: getWidth(37),
                                      height: getHeight(32),
                                      child: Image.asset(kMessageIcon,fit: BoxFit.contain,color: kBlueShade1Color,)),
                                ),
                              ],
                            ),
                          ) : SizedBox()),
                          SizedBox(height: getHeight(30),),
                          Text("To complete this habit",style: AppStyles.blackTextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w700,),),
                          SizedBox(height: getHeight(16),),
                          Padding(
                            padding: EdgeInsets.only(left: getWidth(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                bulletPoints("Have complex and engaging interaction and discussion with people.")
                              ],
                            ),
                          ),
                          SizedBox(height: getHeight(20),),
                          Text("Why it matters",style: AppStyles.blackTextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w700,),),
                          SizedBox(height: getHeight(16),),
                          Obx(() => Wrap(
                            spacing: getWidth(10),
                            runSpacing: getHeight(10),
                            children: controller.firstHabitUpsDowns.map((label) => _buildChip(label['issue'],label)).toList(),
                          )),
                          SizedBox(height: getHeight(30),),
                          Text( "The human brain has evolved for millions of years to survive and thrive socially. "
                              "\n\nHumans are extremely well adapted for social interaction, so much so that working in occupations with little-to-no complexity in terms of working with people (such as truck driving, manufacturing, and agriculture), is associated with an increased risk of dementia and worse cognitive functioning later in life compared to individuals who work with people in more complex capacities (e.g. business executive, counseling, teaching, mentoring). "
                              "\n\nThis is likely due to these activities being cognitively undemanding, over-learned, or repetitive in nature, i.e. lacking complexity, variation, and novelty."
                              "\n\nPeople who spend more time engaged in enriched social interaction and discussion have a lower risk of cognitive decline and dementia, delayed dementia onset, slower rate of cognitive decline, and better cognitive functioning later in life."
                              "\n\nWhile there are other ways to stimulate and challenge the brain, few things come close to the benefits of frequent, enriched, and challenging social interactions."
                              "\n\nInteresting fact: People experiencing cognitive decline are more likely to “downshift” to a less demanding job or retire earlier, however, retirement is known to cause a more rapid rate of decline in cognitive functions as they become less stimulated."
                              "\n\nInteresting fact: people with a rich social network have a 60% lower risk of dementia."
                            ,style: AppStyles.blackTextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w500,),),
                          SizedBox(height: getHeight(350),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: getHeight(16),horizontal: getWidth(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Start time",style: AppStyles.blackTextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w400,),),
                            SizedBox(height: getHeight(8),),
                            Text("12:20 pm",style: AppStyles.primaryTextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.w600,),),

                          ],
                        ),
                        CustomButton(
                          title: "Set prompts",
                          onTap: (){},
                          height: getHeight(47),
                          width: getWidth(177),
                          showShadow: false,
                          textSize: 18,
                          isImage: true,
                          image: kNotificationFilledIcon,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  Widget bulletPoints(String text){
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: getHeight(6)),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: kPrimaryColor,
            ),
          ),
          SizedBox(width: getWidth(12),),
          Expanded(child: Text(text,style: AppStyles.blackTextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w500,),)),
        ],
      ),
    );
  }

  Widget _buildChip(String text,var data) {
    return Container(
      height: getHeight(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: kWhiteColor,
      ),
      padding: EdgeInsets.symmetric(vertical: getHeight(10), horizontal: getWidth(10)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(data['type'] == 'healthy' ? kUpArrowIcon : kDownArrowIcon, height: 28, width: 28),
          SizedBox(width: getWidth(13)),
          Text(
            text,
            style: AppStyles.blackTextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }


}

