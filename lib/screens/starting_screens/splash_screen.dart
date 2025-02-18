import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Get.offAndToNamed(kWelcomeScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
          child: Image.asset(
        kAppLoading,
        height: getHeight(60),
        width: getWidth(106),
      )),
    );
  }
}
