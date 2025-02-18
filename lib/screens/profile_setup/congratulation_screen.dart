import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getHeight(53)),
            Image.asset(
              kCongrats,
              height: getHeight(210),
              width: getWidth(237),
            ),
            Text(
              'Congratulations on creating\nan account!',
              textAlign: TextAlign.center,
              style: AppStyles.primaryTextStyle()
                  .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: getHeight(55)),
            Text(
              'People who use Healink Report feeling much\nmore in control of their lifestyle after just a\nfew days.',
              textAlign: TextAlign.center,
              style: AppStyles.primaryTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: kGreyShade4Color),
            ),
            SizedBox(height: getHeight(195)),
            CustomButton(
              height: 48,
              width: 346,
              title: 'Continue',
              onTap: () {
                Get.offAndToNamed(kHabitSelectionScreenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
