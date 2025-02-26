import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'controller/lesson_detail-controller.dart';

class LessonDetailScreen extends StatelessWidget {
  final LessonDetailController controller = Get.put(LessonDetailController());

  LessonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments['title'] ?? "Default Title";
    final String imagePath = Get.arguments['image'] ?? "assets/default_image.png";

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kBgColor,
        title: Text(
          "Theory Lesson: $title",
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.only(left: getWidth(24)),
            child: Center(child: Image.asset(kArrowIcon,height: 16,width: 16,)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppStyles().paddingAll24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: getHeight(343),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: getHeight(32)),
              Text(
                title,
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: getHeight(12)),
              _buildSlider(),
              SizedBox(height: getHeight(20)),
              _buildControls(),
              SizedBox(height: getHeight(32)),
              CustomButton(title: "+ Add this habit", onTap: (){},width: getWidth(285),height: getHeight(48),),
              SizedBox(height: getHeight(25)),
              Row(
                children: [
                  Text(
                    "Related biomarkers",
                    style: AppStyles.primaryTextStyle().copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(22)),
              Row(
                children: [
                  Text(
                    "Attention Control and Mindfulness",
                    style: AppStyles.primaryTextStyle().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(12)),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "A poor ability to step back to observe one’s own thought processes and emotion underlies various psychiatric conditions such as depression and anxiety. Mindfulness practices (awareness of experience) improve speed and efficiency of attentional cognitions. Mindfulness is the state of observation of one's thoughts and sensory experience without judgment. Put simply, it is the practice of continually observing the present moment without attachment. This type of practice adapts the brain to more easily “check-in” on one’s own experience, rather than be “caught-up” in it. This is important as it allows for more intentional, deliberate responses rather than automatic reactions to events and stimuli."
                                  "\n\nAttentional practices train the ability to manipulate the position and breadth of attention and to disengage and redirect attention. Training involves systematically and intentionally directing and sustaining attention toward the processes of thoughts, emotions, and perceptions without analyzing their content. “Meta-awareness” refers to being aware of processes of consciousness. In absence of meta-awareness, one becomes fused with their experience. This is experiential fusion: aware of the objects of attention but not of the processes of thought, emotion, and perception. Experiential fusion is the opposite of meta-awareness. Mindfulness training reverses this fusion with experiences and gives distance and psychological flexibility. This can reduce depressive symptoms and addiction. Mindfulness helps to disengage from detrimental rumination and obsession by bringing awareness to the present moment. Training causes structural and functional changes in attention-related networks in the brain."
                                  "\n\nAttentional practices can include either focused-attention (FA) or open-monitoring (OM). FA uses attention focused on a single object (e.g. breath, sounds, body sensations) or subject (thoughts). Importantly, FA does not refer to the stable attentiveness when you are engaged in watching a movie, playing a game, or conversation. OM is a broadened scope of attention to include the dynamic flow of emotion, thought, perception, and awareness. Suitable attitudes while in training include non-striving, non-judgmental awareness, acceptance, patience, a beginner's mind, and letting go and letting things be."
                          " \n\nMindfulness training can be as simple as paying attention to the rise and fall of the breath, sensations of the body, local sounds, and incoming thoughts."
                          "\nDaily mindfulness practices are useful in optimizing awareness over time. Mindfulness strategies have proven their efficacy in treating and preventing stress, depression, and anxiety over the past 30 years. The Mindfulness-based stress reduction (MBSR) program is currently prescribed to patients in hundreds of hospitals around the world.",
                      style: AppStyles.blackTextStyle().copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }


  Widget _buildSlider() {
    return Obx(() {
      return Column(
        children: [
          Slider(
            value: controller.currentPosition.value.inSeconds.toDouble(),
            min: 0,
            max: controller.totalDuration.value.inSeconds.toDouble(),
            onChanged: (value) {
              controller.seekTo(Duration(seconds: value.toInt()));
            },
            thumbColor: kBlackTextColor,
            activeColor: kPrimaryColor,
            inactiveColor: kBlackTextColor,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatDuration(controller.currentPosition.value),
                  style:
                  AppStyles.darkGreyTextStyle().copyWith(fontSize: 12.sp),
                ),
                Text(
                  _formatDuration(controller.totalDuration.value),
                  style:
                  AppStyles.darkGreyTextStyle().copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: controller.seekBackward,
          child: Image.asset(
            kBackIcon,
            height: getHeight(40),
            width: getWidth(40),
          ),
        ),
        SizedBox(width: getWidth(55)),
        Obx(() {
          return GestureDetector(
            onTap: controller.playPause,
            child: Icon(
              controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
              size: 28.sp,
              color: kBlackTextColor,
            ),
          );
        }),
        SizedBox(width: getWidth(55)),
        GestureDetector(
          onTap: controller.seekForward,
          child: Image.asset(
            kForwardIcon,
            height: getHeight(40),
            width: getWidth(40),
          ),
        ),
      ],
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    return "${twoDigits(duration.inMinutes)}:${twoDigits(duration.inSeconds.remainder(60))}";
  }
}
