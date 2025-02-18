import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewPassswordScreen extends StatelessWidget {
  final AuthController controller = Get.find();

  NewPassswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: getHeight(64)),
              Container(
                height: getHeight(91),
                width: getWidth(91),
                decoration:
                    BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: Image.asset(
                  kLogo,
                  height: getHeight(75),
                  width: getWidth(75),
                ),
              ),
              SizedBox(height: getHeight(30)),
              Text(
                'Enter New Password',
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(30)),
              Obx(
                () => CustomTextField(
                    width: 345,
                    controller: controller.newPasswordController,
                    focusNode: controller.newPasswordFocusNode,
                    hintText: 'Enter New Password',
                    suffixBuilder: (isFocused) => InkWell(
                          onTap: controller.toggleNewPasswordVisibility,
                          child: Icon(
                            controller.isNewPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: isFocused ? kBlackTextColor : kGreyColor,
                          ),
                        ),
                    isObscure: !controller.isNewPasswordVisible.value),
              ),
              SizedBox(height: getHeight(20)),
              Obx(
                () => CustomTextField(
                    width: 345,
                    controller: controller.newConfirmPasswordController,
                    focusNode: controller.newConfirmPasswordFocusNode,
                    hintText: 'Confirm New Password',
                    suffixBuilder: (isFocused) => InkWell(
                          onTap: controller.toggleNewConfirmPasswordVisibility,
                          child: Icon(
                            controller.isNewConfirmPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: isFocused ? kBlackTextColor : kGreyColor,
                          ),
                        ),
                    isObscure: !controller.isNewConfirmPasswordVisible.value),
              ),
              SizedBox(height: getHeight(23)),
              Text(
                'Please enter your new password.',
                style: AppStyles.blackTextStyle().copyWith(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(68)),
              CustomButton(
                height: 48,
                width: 346,
                title: 'Confirm Password',
                onTap: controller.newPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
