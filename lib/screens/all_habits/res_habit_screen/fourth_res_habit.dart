import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import '../../../common_widgets/activity_model_button.dart';
import '../../../common_widgets/triangle_container.dart';
import '../../../common_widgets/warning_dialog.dart';
import 'controller/res_habit_controller.dart';

class FourthResilienceHabitDetail extends GetView<ResilienceHabitController> {
  const FourthResilienceHabitDetail({super.key});


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
                      child: Image.asset(kScenery2Image,fit: BoxFit.cover,),
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
                      color: kOrangeShade1Color,
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
                              backgroundImage: AssetImage(kResilienceImage4),
                            ),
                            SizedBox(width: getWidth(12),),
                            Expanded(child: Text("Plan goals and take action daily",style: AppStyles.whiteTextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.w700,),)),
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
                  child: Padding(
                    padding: AppStyles().paddingHabitColumn,
                    child: SingleChildScrollView(
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
                                        border: Border.all(color: kOrangeShade2Color,width: getWidth(4))
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
                                                  child: Image.asset(kPersonAvatarImage,fit: BoxFit.contain,),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: getHeight(46)),
                                                child: TriangleWidget(color: kOrangeShade2Color),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  height: getHeight(210),
                                                  decoration: BoxDecoration(
                                                      color: kOrangeShade2Color,
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
                                      child: Image.asset(kMessageIcon,fit: BoxFit.contain,)),
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
                                bulletPoints("Have a long-term goal that you personally find meaningful, fulfilling, interesting, and you know you can achieve."),
                                bulletPoints("Picture this goal coming true."),
                                bulletPoints("Think of the external and internal obstacles that could or currently do stand in the way of you achieving this goal."),
                                bulletPoints("Develop a specific plan of how you are going to achieve your goals and overcome obstacles."),
                                bulletPoints("Of an evening, plan your day of tasks for tomorrow that contribute to your goal."),
                                bulletPoints("Rehearse your day in the morning using your plan created yesterday."),
                                bulletPoints("Take action daily to work towards your goals.")
                              ],
                            ),
                          ),
                          SizedBox(height: getHeight(20),),
                          Text("Why it matters",style: AppStyles.blackTextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w700,),),
                          SizedBox(height: getHeight(16),),
                          Obx(() => Wrap(
                            spacing: getWidth(10),
                            runSpacing: getHeight(10),
                            children: controller.fourthHabitUpsDowns.map((label) => _buildChip(label['issue'],label)).toList(),
                          )),
                          SizedBox(height: getHeight(30),),
                          Text("Dreamers are often non-doers. Positive thinking is helpful and pleasurable in the moment but it can cause us to prematurely achieve our goals and reduce our motivation to put in the effort required to actually make our goals a reality. Optimistic thinking can cause us to be more depressed in the long-run."
                              "\n\nHigh positive expectations lead to low effort which leads to low success which leads to poor mental and physical health and poor personal development as our goals linger. Positive thinking, fantasies, and dreams are useful for exploring and developing possibilities for our future when we combine them with reality."
                              "\n\nA highly effective approach, known as the “WOOP” intervention, solves this dilemma of wishful thinking. WOOP is an acronym for its four components: Wish, Outcome, Obstacle, Plan. "
                              "\n\nThe four-step process involves clarifying what you want (wish) and imagine the outcome coming true (positive thinking), then balance this with a recognition of the obstacles that may stand in your way of achieving this outcome (e.g. your anxiety, skill, circumstances), then make a plan to overcome the obstacle(s) (e.g.”if___happens then i will overcome it by___”). This exercise can be done anytime in a matter of minutes mentally and is a scientifically valid goal-setting approach to changing our behavior for health and success. "
                              "\n\nThe WOOP framework can also be combined with the “SMART” framework, another highly effective approach to goal-setting and success. The SMART guidelines are to ensure the goals one sets are Specific, Measurable, Achievable, Relevant, Time bound. "
                              "\n\nThe WOOP and SMART frameworks help us to increase our sense of goal-directedness, life-satisfaction, and self-efficacy. "
                              "\n\nSelf-efficacy, which is the belief that one is capable of producing results and reaching goals (“i can do it”), is a determinant of mental and physical health, higher achievement, and more social integration. Mastery experiences are the direct experiences we have when taking on new challenges and succeeding first-hand, and are powerful drivers of self-efficacy."
                              "\n\nPeople who believe they have control over future events (internal locus of control - LOC) are more likely to use that control to achieve personal goals (mastery experience), which increases a sense of self-efficacy that further helps one to overcome situations and leads to enhanced health and wellbeing."
                              "\n\nIndividuals with a greater internal locus of control perceive a greater control over their circumstances and engage in action taking more than those with an external LOC because they understand that success depends on their agency."
                              "\n\nPeople with a higher degree of internal LOC tend to experience less depression, stress, and anxiety than people with lower internal LOC who view themselves as having little control over their lives and attribute success and failure to external factors such as luck, destiny, fate, or coincidence."
                              "\n\nHope is a sense of goal-direction, determination, and an expectation that the goals can be achieved using effort. It is action-oriented. Like optimism, hope is also future-oriented. "
                              "\n\nHowever, unlike optimism, which assumes the future will be inevitably good (which causes us to not put in the hard work), hope is a motivation to persevere toward an end state, knowing that the goal may not be achieved, but that hard work (agency) and pathways-thinking (to overcome obstacles) can make it happen. Hope is a combination of agency and pathways-thinking. "
                              "\n \nLife satisfaction requires more than positive emotion and freedom of suffering, it requires purpose and engagement. "
                              "\n\nEngagement is a state where an individual is engrossed in a personally interesting and fulfilling activity to the extent where they may lose track of time (“getting lost down the rabbit hole”). It is a focus on a task in the present. It is a state known also as ‘flow’. Flow most easily comes from using one’s character strengths."
                              "\n\nWhen an individual’s activities combine their character strengths with their interests they are more likely to experience engagement, sense of purpose, and life-satisfaction. "
                              "\n\nInteresting fact: post-university depression is a common occurrence for many graduates, likely resulting from ambiguous direction and purpose after graduating."
                              "\n\nExample of mastery experience: a person who does not consider themselves skilled at cooking can increase their self-efficacy by successfully cooking different meals for several days."
                              "\n\nQuote: \"Self-belief does not necessarily ensure success, but self-disbelief assuredly spawns failure.\" - Albert Bandura"
                              "\n\nQuote: “A winner is a dreamer who never gives up” - Nelson Mandela "
                              "\n\nQuote: \"Things may come to those who wait, but only things left by those who hustle; whatever you are, be a good one\" - Abraham Lincoln."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w500,),),
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

