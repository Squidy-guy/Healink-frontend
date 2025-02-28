import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/habit_prompt_dialog.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import '../../../common_widgets/activity_model_button.dart';
import '../../../common_widgets/triangle_container.dart';
import '../../../common_widgets/warning_dialog.dart';
import 'controller/res_habit_controller.dart';

class SecondResilienceHabitDetail extends GetView<ResilienceHabitController> {
  const SecondResilienceHabitDetail({super.key});

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
                  child: Image.asset(
                    kScenery2Image,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: AppStyles().paddingHorizontal15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: kWhiteColor,
                            child: Center(
                                child: Image.asset(kArrowIcon,
                                    height: getHeight(20),
                                    width: getWidth(20))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.dialog(
                              WarningDialog(
                                  action: () {},
                                  title: "Focus habit",
                                  detail:
                                      "Do you want to set this habit as your focus? Doing so will replace your current focus habit.",
                                  actionText: "Yes"),
                              barrierDismissible: false,
                            );
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: kWhiteColor,
                            child: Center(
                                child: Image.asset(
                              kStarIcon,
                              height: getHeight(20),
                              width: getWidth(20),
                              color: kBlackTextColor,
                            )),
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
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(24), vertical: getHeight(15)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage(kResilienceImage2),
                        ),
                        SizedBox(
                          width: getWidth(12),
                        ),
                        Expanded(
                            child: Text(
                          "Self-reflection",
                          style: AppStyles.whiteTextStyle().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
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
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24))),
              child: Padding(
                padding: AppStyles().paddingHabitColumn,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() => controller.isVisible.value
                          ? SizedBox(
                              height: getHeight(335),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: getHeight(316),
                                      width: width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: kWhiteColor,
                                          border: Border.all(
                                              color: kOrangeShade2Color,
                                              width: getWidth(4))),
                                      child: Padding(
                                        padding: AppStyles().paddingAll15,
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getHeight(9)),
                                                  child: SizedBox(
                                                    height: getHeight(188),
                                                    width: getWidth(125),
                                                    child: Image.asset(
                                                      kPersonAvatarImage,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getHeight(46)),
                                                  child: TriangleWidget(
                                                      color:
                                                          kOrangeShade2Color),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: getHeight(210),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            kOrangeShade2Color,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8)),
                                                    child: Scrollbar(
                                                      thumbVisibility: true,
                                                      thickness: getWidth(4),
                                                      radius:
                                                          Radius.circular(8),
                                                      controller: controller
                                                          .scrollController,
                                                      child:
                                                          SingleChildScrollView(
                                                        controller: controller
                                                            .scrollController,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    getWidth(
                                                                        12)),
                                                            child: Obx(
                                                              () => Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    controller
                                                                        .currentMessage,
                                                                    style: AppStyles.whiteTextStyle().copyWith(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        fontSize:
                                                                            15.3),
                                                                  ),
                                                                  if (controller.currentMessageIndex.value == 1 ||
                                                                      controller
                                                                              .currentMessageIndex
                                                                              .value ==
                                                                          6 ||
                                                                      controller
                                                                              .currentMessageIndex
                                                                              .value ==
                                                                          7)
                                                                    SizedBox(
                                                                      height:
                                                                          getHeight(
                                                                              10),
                                                                    ),
                                                                  if (controller
                                                                          .currentMessageIndex
                                                                          .value ==
                                                                      1)
                                                                    CustomModelButton(
                                                                        onTap:
                                                                            () {
                                                                          Get.dialog(
                                                                            WarningDialog(
                                                                                action: () {},
                                                                                title: "Remove habit",
                                                                                detail: "Do you want to remove this habit from your routine?",
                                                                                actionText: "Remove"),
                                                                            barrierDismissible:
                                                                                false,
                                                                          );
                                                                        },
                                                                        text:
                                                                            "Remove"),
                                                                  if (controller
                                                                          .currentMessageIndex
                                                                          .value ==
                                                                      1)
                                                                    SizedBox(
                                                                      height:
                                                                          getHeight(
                                                                              10),
                                                                    ),
                                                                  if (controller
                                                                          .currentMessageIndex
                                                                          .value ==
                                                                      1)
                                                                    CustomModelButton(
                                                                        onTap:
                                                                            () {
                                                                          Get.dialog(
                                                                            WarningDialog(
                                                                                action: () {},
                                                                                title: "Focus habit",
                                                                                detail: "Do you want to set this habit as your focus? Doing so will replace your current focus habit.",
                                                                                actionText: "Yes"),
                                                                            barrierDismissible:
                                                                                false,
                                                                          );
                                                                        },
                                                                        text:
                                                                            "Focus"),
                                                                  if (controller
                                                                          .currentMessageIndex
                                                                          .value ==
                                                                      6)
                                                                    CustomModelButton(
                                                                        onTap:
                                                                            () {},
                                                                        text:
                                                                            "Guide"),
                                                                  if (controller
                                                                          .currentMessageIndex
                                                                          .value ==
                                                                      7)
                                                                    CustomModelButton(
                                                                        onTap:
                                                                            () {},
                                                                        text:
                                                                            "Prompt"),
                                                                ],
                                                              ),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: getHeight(22),
                                            ),
                                            Row(
                                                mainAxisAlignment: controller
                                                            .currentMessageIndex
                                                            .value ==
                                                        0
                                                    ? MainAxisAlignment.end
                                                    : MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  controller.currentMessageIndex
                                                              .value ==
                                                          0
                                                      ? SizedBox()
                                                      : CustomButton(
                                                          title: "Back",
                                                          onTap: controller
                                                              .previousMessage,
                                                          showShadow: false,
                                                          width: getWidth(96),
                                                          height: getHeight(45),
                                                          textColor:
                                                              kBlackTextColor,
                                                          color:
                                                              kGreyShade16Color,
                                                          borderColor:
                                                              kGreyShade16Color,
                                                          textSize: 17,
                                                        ),
                                                  Obx(
                                                    () => CustomButton(
                                                      title: controller
                                                                  .currentMessageIndex
                                                                  .value ==
                                                              controller
                                                                      .messages
                                                                      .length -
                                                                  1
                                                          ? "Done"
                                                          : "Next",
                                                      onTap: controller
                                                          .nextMessage,
                                                      borderColor: controller
                                                                  .currentMessageIndex
                                                                  .value ==
                                                              controller
                                                                      .messages
                                                                      .length -
                                                                  1
                                                          ? kFeroziColor
                                                          : kPrimaryColor,
                                                      showShadow: false,
                                                      width: getWidth(96),
                                                      height: getHeight(45),
                                                      textSize: 17,
                                                      color: controller
                                                                  .currentMessageIndex
                                                                  .value ==
                                                              controller
                                                                      .messages
                                                                      .length -
                                                                  1
                                                          ? kFeroziColor
                                                          : kPrimaryColor,
                                                    ),
                                                  )
                                                ])
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
                                        child: Image.asset(
                                          kMessageIcon,
                                          fit: BoxFit.contain,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          : SizedBox()),
                      SizedBox(
                        height: getHeight(30),
                      ),
                      Text(
                        "To complete this habit",
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getWidth(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bulletPoints(
                                "If ever you felt negative emotion, you were able to recognize being in that state and what led to it, and deploy rational thought processes in response, rather than reacting without consideration."),
                            bulletPoints(
                                "Of an evening, reflect on your day to think about what you did well and what you did not so well, and how you could have been better.")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Text(
                        "Why it matters",
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(16),
                      ),
                      Obx(() => Wrap(
                            spacing: getWidth(10),
                            runSpacing: getHeight(10),
                            children: controller.secondHabitUpsDowns
                                .map((label) =>
                                    _buildChip(label['issue'], label))
                                .toList(),
                          )),
                      SizedBox(
                        height: getHeight(30),
                      ),
                      Text(
                        "Thoughts, emotions, and perceptions are not accurate depictions of reality. Human thought processes have evolved to increase survival, not necessarily for accuracy and psychological wellbeing. It is common to experience automatic, involuntary thought processes that, if allowed to pass without first being challenged, can be detrimental to emotional wellbeing."
                        "\n\nAn anxious person's attention and interpretation is biased towards negative information. These intrinsic mechanisms that aid survival can interfere with health and well-being, especially when excessive, contributing to stress, depression, and anxiety. This is why strategies to control cognitive distortions, such as cognitive behavior therapy (CBT), improve psychological well-being. Self-inquiry is used to understand how thoughts shape emotions (and vice versa) which shapes one’s subjective experience and self concepts."
                        "\n\nOur interpretations and beliefs shape our reality. Self-inquiry involves analysis and deconstructing our thoughts and interpretations to test if they are rational or irrational. Analyzing and deconstructing our interpretations of experiences (self-inquiry) allows us to put them to the test and examine the evidence (disputation) rather than making assumptions."
                        "\n\nDepression typically involves a bias against oneself, negative expectations, and being overly self-critical. "
                        "\n\nCommon cognitive distortions, many of which are interrelated, include jumping to conclusions (e.g. assuming you know for certain what will happen next or what others are thinking), catastrophizing, mental filtering (focusing only on the negative), emotional reasoning (thinking emotions reflect what really is), and control fallacies such as thinking something cannot be controlled when it can (blame) and thinking something can be controlled when it can’t (personalization)."
                        "\n\nOne can restructure irrational and unbalanced beliefs (cognitive restructuring) by learning to notice self-defeating negative thinking patterns by examining the evidence for and against them. For example, an individual might perceive that they are “not good at anything” and hate themself as a result. They can correct this error in reasoning by recalling many instances where they were good at certain things. This helps to correct our implicite negativity bias."
                        "\n\nWe can also reflect on our day (e.g. in the evening) to see if we can catch ourselves using a cognitive distortion and think about what healthier and more rational alternatives would have been."
                        "\n\nWe are not affected by events but by our interpretations of them. We have power over our mind but not always outside events. It helps to question implicit interpretations and examine the evidence; avoid assumption making; focus on what we control and accept the rest as it is."
                        "\n\nQuote: \"It is not things that disturb us, but our interpretation of their significance\" - Epictetus "
                        "\n\nQuote: “Fortune falls heavily on those for whom she’s unexpected. The one always on the lookout easily endures.” - Seneca"
                        "\n\nInteresting short video: https://www.youtube.com/watch?v=byQrdnq7_H0&ab_channel=Wiara",
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(350),
                      ),
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
                padding: EdgeInsets.symmetric(
                    vertical: getHeight(16), horizontal: getWidth(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Start time",
                          style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: getHeight(8),
                        ),
                        Text(
                          "12:20 pm",
                          style: AppStyles.primaryTextStyle().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      title: "Set prompts",
                      onTap: () {
                        Get.dialog(HabitPromptDialog());
                      },
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
    ));
  }

  Widget bulletPoints(String text) {
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
          SizedBox(
            width: getWidth(12),
          ),
          Expanded(
              child: Text(
            text,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildChip(String text, var data) {
    return Container(
      height: getHeight(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: kWhiteColor,
      ),
      padding: EdgeInsets.symmetric(
          vertical: getHeight(10), horizontal: getWidth(10)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(data['type'] == 'healthy' ? kUpArrowIcon : kDownArrowIcon,
              height: 28, width: 28),
          SizedBox(width: getWidth(13)),
          Text(
            text,
            style: AppStyles.blackTextStyle()
                .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
