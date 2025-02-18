import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/profile_setup/controller/avatar_controller.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AvatarSelectionScreen extends StatelessWidget {
  final AvatarController controller = Get.find();

  AvatarSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: getHeight(100)),
          Text(
            'Select your avatar',
            style: AppStyles.blackTextStyle()
                .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: getHeight(46)),
          Obx(
            () => GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: getHeight(70)),
              itemCount: controller.paginatedAvatars.length,
              itemBuilder: (context, index) {
                String avatar = controller.paginatedAvatars[index];
                return GestureDetector(
                  onTap: () => controller.selectAvatar(avatar),
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      height: controller.selectedAvatar.value == avatar
                          ? getHeight(110)
                          : getHeight(70),
                      width: controller.selectedAvatar.value == avatar
                          ? getWidth(110)
                          : getWidth(70),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: controller.selectedAvatar.value == avatar
                              ? Colors.black
                              : Colors.transparent,
                          width: 3,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          avatar,
                          height: controller.selectedAvatar.value == avatar
                              ? getHeight(110)
                              : getHeight(70),
                          width: controller.selectedAvatar.value == avatar
                              ? getWidth(110)
                              : getWidth(70),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: getHeight(80)),
          Obx(() => Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (controller.currentPage.value > 0)
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 15.sp,
                          ),
                          TextButton(
                            onPressed: controller.previousPage,
                            child: Text(
                              'Previous',
                              style: AppStyles.blackTextStyle(),
                            ),
                          ),
                        ],
                      ),
                    Spacer(),
                    if ((controller.currentPage.value + 1) * 9 <
                        controller.avatars.length)
                      Row(
                        children: [
                          TextButton(
                            onPressed: controller.nextPage,
                            child: Text(
                              'See more',
                              style: AppStyles.blackTextStyle(),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.sp,
                          )
                        ],
                      ),
                  ],
                ),
              )),
          SizedBox(height: getHeight(35)),
          Obx(
            () => controller.selectedAvatar.value != null
                ? CustomButton(
                    height: 48,
                    width: 346,
                    title: 'Continue',
                    onTap: () {
                      Get.offAndToNamed(kCongratulationsScreenRoute);
                    },
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
