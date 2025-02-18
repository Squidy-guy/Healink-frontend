import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.find();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: getHeight(64)),
                Container(
                  height: getHeight(91),
                  width: getWidth(91),
                  decoration: BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                  child: Image.asset(
                    kLogo,
                    height: getHeight(75),
                    width: getWidth(75),
                  ),
                ),
                SizedBox(height: getHeight(30)),
                Text(
                  'Log in to Healink',
                  style: AppStyles.blackTextStyle().copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getHeight(30)),
                CustomTextField(
                  width: 345,
                  controller: controller.loginEmailController,
                  focusNode: controller.loginEmailFocusNode,
                  hintText: 'Email',
                  suffixBuilder: (isFocused) => Image.asset(
                    kEmailIcon,
                    height: getHeight(18),
                    width: getWidth(18),
                    color: isFocused ? kBlackTextColor : kGreyColor,
                  ),
                ),
                SizedBox(height: getHeight(20)),
                Obx(
                  () => CustomTextField(
                      width: 345,
                      controller: controller.loginPasswordController,
                      focusNode: controller.loginPasswordFocusNode,
                      hintText: 'Password',
                      suffixBuilder: (isFocused) => InkWell(
                            onTap: controller.toggleLoginPasswordVisibility,
                            child: Icon(
                              controller.isLoginPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: isFocused ? kBlackTextColor : kGreyColor,
                            ),
                          ),
                      isObscure: !controller.isLoginPasswordVisible.value),
                ),
                SizedBox(height: getHeight(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Obx(() => Checkbox(
                              activeColor: kPrimaryColor,
                              side: BorderSide(color: kBlackTextColor),
                              value: controller.rememberMe.value,
                              onChanged: (value) =>
                                  controller.toggleRememberMe(),
                            )),
                        Text(
                          'Remember me',
                          style: AppStyles.darkGreyTextStyle()
                              .copyWith(color: kBlackTextColor),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(kSForgotPassswordScreenRoute);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: getWidth(10)),
                        child: Text(
                          'Forgot password',
                          style: AppStyles.darkGreyTextStyle().copyWith(
                            color: kGreyShade2Color,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: getHeight(50)),
                CustomButton(
                  height: 48,
                  width: 346,
                  title: 'Log in',
                  onTap: controller.login,
                ),
                SizedBox(height: getHeight(40)),
                Text('Or create with',
                    style: AppStyles.greyTextStyle().copyWith(
                        fontWeight: FontWeight.w600, color: kGreyShade2Color)),
                SizedBox(height: getHeight(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    circleContainer(kGoogleIcon),
                    SizedBox(width: getWidth(15)),
                    circleContainer(kAppleIcon),
                    SizedBox(width: getWidth(15)),
                    circleContainer(kFacebookIcon),
                  ],
                ),
                SizedBox(height: getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont\'t have an account? ',
                      style: AppStyles.greyTextStyle()
                          .copyWith(color: kGreyShade2Color),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(kRegisterScreenRoute);
                      },
                      child: Text(
                        'Create',
                        style: AppStyles.primaryTextStyle().copyWith(
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getHeight(34)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget circleContainer(String icon) {
    return Container(
      height: getHeight(60),
      width: getWidth(60),
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Image.asset(
          icon,
          height: getHeight(24),
          width: getWidth(24),
        ),
      ),
    );
  }
}
