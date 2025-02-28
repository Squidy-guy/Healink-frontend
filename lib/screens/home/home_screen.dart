import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/habit_card.dart';
import 'package:healink_app/common_widgets/premium_dialog.dart';
import 'package:healink_app/common_widgets/progress_card.dart';
import 'package:healink_app/common_widgets/tutorial_bottom_sheet.dart';
import 'package:healink_app/screens/home/controller/home_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = Get.find();
  final ScrollController _scrollController = ScrollController();
  late Timer _scrollTimer;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showTutorialBottomSheet(context);
    });

    _startAutoScroll();
  }

  void _startAutoScroll() {
    _scrollTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.offset;
        double nextScroll = currentScroll + getWidth(150);

        if (nextScroll >= maxScroll) {
          _scrollController.animateTo(0,
              duration: Duration(seconds: 2), curve: Curves.easeInOut);
        } else {
          _scrollController.animateTo(nextScroll,
              duration: Duration(seconds: 2), curve: Curves.easeInOut);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollTimer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(68)),
            HomeHeader(),
            SizedBox(height: getHeight(34)),
            SizedBox(
              height: getHeight(160),
              child: ListView(
                controller: _scrollController,
                padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
                scrollDirection: Axis.horizontal,
                children: [
                  ProgressCard(
                    title: "Start Kicking-off\nhabits you complete.",
                    subtitle: "0 of 28 complete",
                    percentage: "70%",
                    buttonText: "Edit Routine",
                    colors: [kPrimaryColor, kPrimaryColor],
                    width: getWidth(250),
                    buttonColor: kBlueColor,
                    onTap: () {
                      Get.toNamed(kHabitSelectionScreenRoute);
                    },
                  ),
                  ProgressCard(
                    title: "Better Together",
                    subtitle:
                        "Bring your friends along\non a wellness adventure",
                    buttonText: "Add Friends",
                    colors: [kOrangeColor, kOrangeColor],
                    width: getWidth(142),
                    buttonColor: kBrownColor,
                    icon: kFriends,
                    onTap: () {
                      Get.toNamed(kFriendsScreenRoute);
                    },
                  ),
                  ProgressCard(
                      title: "Your month\nof habits👀",
                      subtitle: "January 2025",
                      buttonText: "Calendar",
                      colors: [kPinkColor, kPinkColor],
                      width: getWidth(142),
                      buttonColor: kDarkPinkColor,
                      icon: kCalendar,
                      onTap: () {
                        showComingSoonDialog();
                      }),
                  ProgressCard(
                    contWidth: getWidth(179),
                    title: "Premium",
                    subtitle: "Only \$5.99 / month",
                    buttonText: "Upgrade",
                    colors: [kPrimaryColor, kLightBlueColor],
                    showBtn: false,
                    lowerImage1: kPremiumIcon,
                    imgHeight: 93,
                    imgWidth: 151,
                    onTap: () {
                      showPremiumDialog();
                    },
                  ),
                  ProgressCard(
                    contWidth: getWidth(284),
                    title: "Daily wisdom #01",
                    subtitle:
                        "Try to avoid lying in bed awake for long\nperiods after waking or at night.",
                    buttonText: "Share",
                    colors: [kLightGreenColor, kLightGreenColor],
                    showBtn: false,
                    showBrainImg: true,
                    showIcon: true,
                  ),
                  ProgressCard(
                    title: "Biomarker\nTracking",
                    subtitle: "January 2025",
                    buttonText: "Report",
                    colors: [kLightBlueColor, kLightBlueColor],
                    width: getWidth(142),
                    buttonColor: kSkyBlueColor,
                    icon: kNotes,
                  ),
                  ProgressCard(
                    title: "Free Gift",
                    subtitle:
                        "Refer a friend and get\none month of Healink\npremium free",
                    buttonText: "Terms Apply",
                    colors: [kDarkRedShadeColor, kDarkRedShadeColor],
                    showBtn: false,
                    lowerImage: kGift,
                  ),
                ],
              ),
            ),
            SizedBox(height: getHeight(15)),
            Obx(
              () => controller.completedHabits.isEmpty
                  ? SizedBox.shrink()
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Completed today",
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: getHeight(10)),
                          Row(
                            children: controller.completedHabits.map((habit) {
                              return Stack(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: getWidth(12)),
                                    child: Image.asset(habit,
                                        width: getWidth(58),
                                        height: getHeight(58)),
                                  ),
                                  Positioned(
                                    right: getWidth(2),
                                    top: getHeight(-4.5),
                                    child: Image.asset(kCircle,
                                        width: getWidth(30),
                                        height: getHeight(30)),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                          SizedBox(height: getHeight(16)),
                        ],
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
              child: Text(
                "Today's Routine",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: getHeight(16)),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: controller.habits.length,
                itemBuilder: (context, index) {
                  var habit = controller.habits[index];
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Get.toNamed(kFourthNutHabitDetailRoute);
                      } else {
                        Get.toNamed(kFirstResHabitDetailRoute);
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
                      child: HabitCard(
                        icon: habit["icon"],
                        name: habit["name"],
                        time: habit["time"],
                        streak: habit["streak"],
                        checked: habit["checked"],
                        color: habit["color"],
                        progress: 0.2,
                        img: habit["icon2"],
                        onTap: () => controller.toggleHabit(index),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: getHeight(40)),
            Center(
                child: InkWell(
              onTap: () {
                Get.toNamed(kHabitSelectionScreenRoute);
              },
              child: DottedBorder(
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: Radius.circular(15),
                color: kGreyShade9Color,
                dashPattern: [3, 1],
                child: Container(
                  height: getHeight(60),
                  width: getWidth(348),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      '+ Add habit',
                      style: AppStyles.darkGreyTextStyle().copyWith(
                        color: kGreyShade9Color,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            )),
            SizedBox(height: getHeight(33)),
          ],
        ),
      ),
    );
  }

  void showComingSoonDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: kWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(21), vertical: getHeight(24)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Coming soon (-ish)",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: getHeight(8)),
              Text(
                "This feature is in development. Come back soon to see it in action.",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 15.sp,
                  color: kGreyShade8Color,
                ),
              ),
              SizedBox(height: getHeight(8)),
              Text(
                "Checkout our social medias for updates on new and emerging features!",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 16.sp,
                  color: kGreyShade8Color,
                ),
              ),
              SizedBox(height: getHeight(10)),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: Size(getWidth(120), getHeight(44)),
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Ok Cool!",
                    style: AppStyles.whiteTextStyle()
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: getWidth(24)),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(10), vertical: getHeight(4)),
                decoration: BoxDecoration(
                  border: Border.all(color: kBlackTextColor),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Wednesday, 29",
                  style: AppStyles.blackTextStyle().copyWith(fontSize: 14.sp),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(kNotificationsScreenRoute);
                },
                child: Image.asset(
                  kBellIcon,
                  height: getHeight(24),
                  width: getWidth(24),
                ),
              )
            ],
          ),
          SizedBox(height: getHeight(24)),
          Row(
            children: [
              CircleAvatar(
                radius: getWidth(22),
                backgroundImage: AssetImage(kAvatar10),
              ),
              SizedBox(width: getWidth(12)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Evening",
                    style: AppStyles.blackTextStyle()
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Alex alex",
                    style: AppStyles.blackTextStyle()
                        .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
