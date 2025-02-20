import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/screens/knowledge/controller/audio_player_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AudioPlayerScreen extends StatelessWidget {
  final AudioController controller = Get.put(AudioController());

  AudioPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(27), vertical: getHeight(45)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(),
            SizedBox(height: getHeight(30)),
            _buildImage(),
            _buildTitle(),
            SizedBox(height: getHeight(20)),
            _buildSlider(),
            SizedBox(height: getHeight(20)),
            _buildControls(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Container(
              height: getHeight(28),
              width: getWidth(28),
              decoration:
                  BoxDecoration(color: kBlackTextColor, shape: BoxShape.circle),
              child: Icon(Icons.close, color: kWhiteColor, size: 18.sp)),
        ),
        Text(
          "Theory Lesson: Living Well",
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: getWidth(28)),
      ],
    );
  }

  Widget _buildImage() {
    return Image.asset(
      kDesignIcon,
      height: getHeight(293),
      width: getWidth(337),
    );
  }

  Widget _buildTitle() {
    return Text(
      "Living Well",
      style: AppStyles.blackTextStyle().copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
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
