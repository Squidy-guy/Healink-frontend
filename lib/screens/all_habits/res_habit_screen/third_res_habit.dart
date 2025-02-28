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

class ThirdResilienceHabitDetail extends GetView<ResilienceHabitController> {
  const ThirdResilienceHabitDetail({super.key});

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
                          backgroundImage: AssetImage(kResilienceImage3),
                        ),
                        SizedBox(
                          width: getWidth(12),
                        ),
                        Expanded(
                            child: Text(
                          "Delay gratification",
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
                                "Practise delaying gratification (such as delaying using your phone for an hour after waking up or waiting 5 seconds before responding to someone in a conversation)."),
                            bulletPoints(
                                "Practise stopping an indulgence and substituting it with a healthier or more productive alternative."),
                            bulletPoints(
                                "Abstain from destructive pleasures (such as alcohol, drugs, nicotine, junk food) or if addicted, use them less than yesterday."),
                            bulletPoints(
                                "Practise voluntary discomfort such as having a cold shower."),
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
                            children: controller.thirdHabitUpsDowns
                                .map((label) =>
                                    _buildChip(label['issue'], label))
                                .toList(),
                          )),
                      SizedBox(
                        height: getHeight(30),
                      ),
                      Text(
                        "Impulsivity is an inability to wait. Training the ability to wait and avoid responding prematurely can improve performance and productivity as our pleasure and pain system and motivation changes. Without the discipline to complete what we start and delay gratification, we wouldn’t ever complete a long, time-consuming task such as running a marathon, writing a dissertation, or starting a new business."
                        "\n\nDelaying gratification is the ability to resist temptations and not act impulsively. This inhibitory control (self-control) over one’s behavior helps us to avoid indulging in short-term pleasures (instant gratification) that undermine our best interests."
                        "\n\nExamples include eating sweets when we are trying to lose weight, using social media when we ought to be sleeping, responding to difficult people with violence, jumping to conclusions, pressing “send” on an email before reading it, and blurting out everything that comes to mind. These activities signify impulsivity and a deficit in inhibitory control."
                        "\n\nOverindulging, without restraint, in certain activities and substances can cause us to develop a dependency on said activity or substance once a threshold has been reached in the brain. "
                        "\n\nAs we overindulge, the brain responds by adapting in ways that make us like (enjoy) it less but want (crave) it more. Over time the brain requires a greater stimulus (mediated by dopamine) to get the same level of satisfaction, which results in increased anxiety (due to craving) and reduces our self-control that affects other parts of our life."
                        "\n\nPeople with a dependency to nicotine, for example, also tend to have other dependencies such as caffeine and junk food. This is due to the part of the brain responsible for reward being reinforced over time from repeated indulgence and lack of delaying gratification."
                        "\n\nResisting instant gratification (impulsive pleasures) in favour of behaviours that push us towards longer-term, more meaningful goals (delayed gratification) can be achieved by abstaining from such activities and substituting them with healthier alternatives. Over time, the brain responds to this abstinence by adapting in ways that reset our reward pathways for said activity or substance as they decay from disuse."
                        "\n\nMany people have become trapped in a dependency to modern conveniences like social media (and other dopamine slot-machines) that give us pleasure in the short-term but suffering in the long-term."
                        "\n\nDeliberate training is more essential in the modern world of ultra-convenience and ultra-stimulation accessible in an instant. This is often referred to as “dopamine resetting” which involves going for extended periods without indulgences and modern conveniences. This can include going a day without a phone or internet, taking a cold shower (voluntary discomfort), going trekking with minimal items, being bored, and living more closely to how we have evolved - simply."
                        "\n\nIf you feel a craving to indulge in something, just wait, wait as long as you can to allow the brain to reset its reward system and adapt to the change in circumstance. Remind yourself it’s ok to be bored and you’ll start to notice that simple things (e.g. sunset, flowers, or working on your long term-goals) become more rewarding again as your dependencies fade."
                        "\n\nInteresting fact: Inhibitory control (e.g. behavioral control) early in life can predict outcomes later in life. Children with better inhibitory control (less impulsive, better at waiting their turn, less easily distracted, and more persistent) are more likely to stay in school, have better physical and mental health, satisfaction, and more income, and less likely to be overweight, have high blood pressure, and take risky behaviors such as smoking and drug use."
                        "\n\nInteresting fact: The hedonic treadmill, also known as hedonic adaptation, refers to the tendency to quickly return to a baseline level of satisfaction after major positive or negative change in one’s life circumstances. This is evident in many people pursuing one pleasure after another as the surge of happiness that's felt after a positive event returns to a steady baseline over time. It’s also why people with 1 million dollars are no more satisfied with life than people with \$100,000 - they have acclimatized to their circumstances."
                        "\n\nHot tip: Let the process of working towards a goal be the reward rather than the end-goal itself. For example, enjoy working towards a promotion, and when you get it, try to delay telling your friends about your promotion for a few days; keep the celebration minimal, and move onto enjoying working toward the next thing. If we make the outcome the reward instead of the process, we will be less satisfied because an outcome is only short-lived but a process can last forever."
                        "\n\nInteresting fact: as people get older, their executive functioning (such as inhibitory control of thoughts, attention, and behavior) tends to decline; making them more prone to distractions and suppressing irrelevant information."
                        "\n\nInteresting fact: everytime we indulge in a pleasurable activity, a molecule (deltaFosB) accumulates in the brain, and once it reaches a critical threshold, a molecular switch is thrown which alters our DNA and causes dependency (addiction), making it harder to revert."
                        "\n\nInteresting fact: Inhibitory control is a core component of our executive functioning. Researchers testing the executive function of inmates in prison found that they were able to predict who were the violent criminals and who were the non-violent criminals based only on inmates' executive function results."
                        "\n\nInteresting fact: the Stanford marshmallow experiment in 1972 was a famous study on delayed gratification. Children were offered one reward immediately or two small rewards if they waited. When they followed up with these subjects later in life they found that the children that were able to delay gratification had better life outcomes (academic performance, health, etc.)."
                        "\n\nQuote: “In times of peace, prepare for war” - Niccolò Machiavelli"
                        "\n\nQuote: “only in the short-term is pleasure good and pain bad” - Jesse, Healink founder",
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
