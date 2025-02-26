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

class RegisterScreen extends StatelessWidget {
  final AuthController controller = Get.find();

  RegisterScreen({super.key});

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
                SizedBox(height: getHeight(54)),
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
                SizedBox(height: getHeight(25)),
                Text(
                  'Create Account',
                  style: AppStyles.blackTextStyle().copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getHeight(25)),
                CustomTextField(
                  width: 345,
                  controller: controller.firstNameController,
                  focusNode: controller.firstNameFocusNode,
                  hintText: 'First Name',
                  suffixBuilder: (isFocused) => Image.asset(
                    kUserIcon,
                    height: getHeight(18),
                    width: getWidth(15),
                    color: isFocused ? kBlackTextColor : kGreyColor,
                  ),
                ),
                SizedBox(height: getHeight(20)),
                CustomTextField(
                  width: 345,
                  controller: controller.lastNameController,
                  focusNode: controller.lastNameFocusNode,
                  hintText: 'Last Name',
                  suffixBuilder: (isFocused) => Image.asset(
                    kUserIcon,
                    height: getHeight(18),
                    width: getWidth(15),
                    color: isFocused ? kBlackTextColor : kGreyColor,
                  ),
                ),
                SizedBox(height: getHeight(20)),
                CustomTextField(
                  width: 345,
                  controller: controller.emailController,
                  focusNode: controller.emailFocusNode,
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
                      controller: controller.passwordController,
                      focusNode: controller.passwordFocusNode,
                      hintText: 'Password',
                      suffixBuilder: (isFocused) => InkWell(
                            onTap: controller.togglePasswordVisibility,
                            child: Icon(
                              controller.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: isFocused ? kBlackTextColor : kGreyColor,
                            ),
                          ),
                      isObscure: !controller.isPasswordVisible.value),
                ),
                SizedBox(height: getHeight(20)),
                Obx(
                  () => CustomTextField(
                      width: 345,
                      controller: controller.confirmPasswordController,
                      focusNode: controller.confirmPasswordFocusNode,
                      hintText: 'Confirm Password',
                      suffixBuilder: (isFocused) => InkWell(
                            onTap: controller.toggleConfirmPasswordVisibility,
                            child: Icon(
                              controller.isConfirmPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: isFocused ? kBlackTextColor : kGreyColor,
                            ),
                          ),
                      isObscure: !controller.isConfirmPasswordVisible.value),
                ),
                SizedBox(height: getHeight(8)),
                Row(
                  children: [
                    Obx(() => Checkbox(
                          activeColor: kPrimaryColor,
                          side: BorderSide(color: kBlackTextColor),
                          value: controller.isAgreed.value,
                          onChanged: (value) => controller.toggleAgreement(),
                        )),
                    Text(
                      'I agree to the ',
                      style: AppStyles.darkGreyTextStyle()
                          .copyWith(color: kGreyShade2Color),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(kTermsConditionsScreenRoute);
                      },
                      child: Text(
                        'Terms,',
                        style: AppStyles.darkGreyTextStyle().copyWith(
                            color: kGreyShade2Color,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: kGreyShade2Color),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(kPrivacyPolicyScreenRoute);
                      },
                      child: Text(
                        ' Policy and ',
                        style: AppStyles.darkGreyTextStyle().copyWith(
                            color: kGreyShade2Color,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: kGreyShade2Color),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(kDisclaimerScreenRoute);
                      },
                      child: Text(
                        'Disclaimer',
                        style: AppStyles.darkGreyTextStyle().copyWith(
                            color: kGreyShade2Color,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: kGreyShade2Color),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getHeight(8)),
                CustomButton(
                  height: 48,
                  width: 346,
                  title: 'Create Account',
                  onTap: controller.register,
                ),
                SizedBox(height: getHeight(24)),
                Text('Or create with',
                    style: AppStyles.greyTextStyle().copyWith(
                        fontWeight: FontWeight.w600, color: kGreyShade2Color)),
                SizedBox(height: getHeight(18)),
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
                SizedBox(height: getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: AppStyles.greyTextStyle()
                          .copyWith(color: kGreyShade2Color),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(kLoginScreenRoute);
                      },
                      child: Text(
                        'Log In',
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
