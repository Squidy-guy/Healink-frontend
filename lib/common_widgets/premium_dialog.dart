import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';

void showPremiumDialog() {
  Get.dialog(PremiumDialog());
}

class PremiumDialog extends StatefulWidget {
  const PremiumDialog({super.key});

  @override
  _PremiumDialogState createState() => _PremiumDialogState();
}

class _PremiumDialogState extends State<PremiumDialog> {
  final PageController _pageController = PageController();
  late Timer _scrollTimer;
  int _currentPage = 0;
  String _selectedPlan = "Weekly";

  final List<Map<String, dynamic>> premiumPages = [
    {
      "image": "assets/images/premium.png",
      "title": "All health habits",
      "description":
          "Access all 30 of Healink’s health habits\nto build your perfect routine."
    },
    {
      "image": "assets/images/premium1.png",
      "title": "Access all guided sessions",
      "description":
          "Enjoy open access to all of Healink’s\naudio guides for every health habit."
    },
    {
      "image": "assets/images/premium2.png",
      "title": "Full biomarker tracking",
      "description":
          "Track 15 key predictive biomarkers and\nsee how your\nlifestyle affects your health."
    },
  ];

  final List<Map<String, String>> plans = [
    {"name": "Weekly", "price": "\$2.99*", "duration": "/week"},
    {"name": "Monthly", "price": "\$5.99*", "duration": "/month"},
    {"name": "Yearly", "price": "\$59.99*", "duration": "/year"},
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _scrollTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % premiumPages.length;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentPage = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollTimer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _selectPlan(String plan) {
    setState(() {
      _selectedPlan = plan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kBgColor,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: getWidth(343),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: getHeight(35)),
            Text(
              "Get Premium",
              style: AppStyles.primaryTextStyle().copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: getHeight(20)),
            SizedBox(
              height: getHeight(248),
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: premiumPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        premiumPages[index]["image"],
                        height: getHeight(146),
                        width: getWidth(196),
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: getHeight(20)),
                      Text(
                        premiumPages[index]["title"],
                        textAlign: TextAlign.center,
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: getHeight(7)),
                      Text(
                        premiumPages[index]["description"],
                        textAlign: TextAlign.center,
                        style: AppStyles.blackTextStyle()
                            .copyWith(fontSize: 14.sp),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                premiumPages.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: getWidth(2.5)),
                  width: getWidth(9),
                  height: getHeight(9),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? kPrimaryColor
                        : kGreyShade12Color,
                  ),
                ),
              ),
            ),
            SizedBox(height: getHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: kBlackColor.withOpacity(0.15),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 0))
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: getHeight(35)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: plans.map((plan) {
                      bool isSelected = _selectedPlan == plan["name"];
                      return GestureDetector(
                        onTap: () => _selectPlan(plan["name"]!),
                        child: Container(
                          width: getWidth(94),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? kLightBlueShadeColor
                                : kGreyShade13Color,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: isSelected
                                    ? kPrimaryColor
                                    : kGreyShade13Color),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: getWidth(94),
                                height: getHeight(26),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? kPrimaryColor
                                      : kLightBlueShadeColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7)),
                                ),
                                child: Center(
                                  child: Text(
                                    plan["name"]!,
                                    style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: isSelected
                                          ? kWhiteColor
                                          : kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: getHeight(12)),
                              Text(
                                plan["price"]!,
                                style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w700,
                                    color: kBlackColor),
                              ),
                              Text(
                                plan["duration"]!,
                                style: AppStyles.blackTextStyle().copyWith(
                                  fontSize: 15.sp,
                                ),
                              ),
                              SizedBox(height: getHeight(3)),
                              isSelected
                                  ? Image.asset(kTickIcon,
                                      height: getHeight(12),
                                      width: getWidth(12))
                                  : SizedBox(height: getHeight(12)),
                              SizedBox(height: getHeight(7)),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: getHeight(23)),
                  CustomButton(
                      height: 48,
                      width: 303,
                      title: "Continue",
                      onTap: () {
                        Get.back();
                      }),
                  SizedBox(height: getHeight(14)),
                  CustomButton(
                      height: 48,
                      width: 303,
                      borderColor: kPrimaryColor,
                      textColor: kPrimaryColor,
                      color: kWhiteColor,
                      title: "Back",
                      onTap: () {
                        Get.back();
                      }),
                  SizedBox(height: getHeight(20)),
                  Text(
                    "*prices are shown in USD. Your card will be charged\nat the start of each billing period.",
                    textAlign: TextAlign.center,
                    style: AppStyles.blackTextStyle()
                        .copyWith(fontSize: 12.sp, color: kGreyShade8Color),
                  ),
                  SizedBox(height: getHeight(20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
