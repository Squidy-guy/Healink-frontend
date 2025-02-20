import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final AuthController controller = Get.find();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                  'Forget password',
                  style: AppStyles.blackTextStyle().copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getHeight(30)),
                CustomTextField(
                  width: 345,
                  controller: controller.forgotPassEmailController,
                  focusNode: controller.forgotEmailFocusNode,
                  hintText: 'Email',
                  suffixBuilder: (isFocused) => Image.asset(
                    kEmailIcon,
                    height: getHeight(18),
                    width: getWidth(18),
                    color: isFocused ? kBlackTextColor : kGreyColor,
                  ),
                ),
                SizedBox(height: getHeight(23)),
                Text(
                  'Please enter your email address to reset your\npassword.',
                  style: AppStyles.blackTextStyle().copyWith(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getHeight(110)),
                CustomButton(
                  height: 48,
                  width: 346,
                  title: 'Verify',
                  onTap: controller.forgotPassword,
                ),
                SizedBox(height: getHeight(40)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
