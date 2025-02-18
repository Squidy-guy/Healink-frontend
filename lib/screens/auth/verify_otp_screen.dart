import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyOtpScreen extends StatelessWidget {
  final AuthController controller = Get.find();

  VerifyOtpScreen({super.key});

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
                'Verify OTP',
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(30)),
              Pinput(
                length: 4,
                onChanged: (value) {
                  controller.code.value = value;
                },
                defaultPinTheme: PinTheme(
                  margin: EdgeInsets.symmetric(horizontal: getWidth(10)),
                  width: getWidth(44),
                  height: getHeight(44),
                  textStyle: AppStyles.blackTextStyle().copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kGreyColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: getWidth(44),
                  height: getHeight(44),
                  textStyle: AppStyles.blackTextStyle().copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kGreyShade3Color,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                showCursor: true,
              ),
              SizedBox(height: getHeight(23)),
              Text(
                'Please enter the 4 digit code sent to your email\naddress.',
                style: AppStyles.blackTextStyle().copyWith(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getHeight(110)),
              CustomButton(
                height: 48,
                width: 346,
                title: 'Verify OTP',
                onTap: controller.verifyOtp,
              ),
              SizedBox(height: getHeight(40)),
            ],
          ),
        ),
      ),
    );
  }
}
