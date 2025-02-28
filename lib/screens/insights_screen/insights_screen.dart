import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/Insight_dialog.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/insights_screen/resi_activity_detail.dart';
import 'package:healink_app/screens/insights_screen/simulation_activity_detail.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'exercise_activity_detail.dart';
import 'nutrition_activity_detail.dart';
import 'sleep_activity_detail.dart';
import 'controller/insight_controller.dart';

class InsightsScreen extends GetView<InsightController> {
  const InsightsScreen({super.key});

  void insightDialog() {
    Get.dialog(
      InfoDialog(
        onClose: () => Get.close(1),
      ),
      barrierDismissible: false,
    );
  }

  void achievementDialog(var data) {
    Get.dialog(
      Dialog(
        backgroundColor: kBgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Padding(
          padding: AppStyles().paddingAll24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                data['title'],
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: getHeight(12),
              ),
              Text(
                data['detail'],
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500,color: kBlackTextColor.withOpacity(0.6)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getHeight(29),
              ),
              SizedBox(
                height: getHeight(139),
                width: getWidth(121),
                child: Image.asset(
                  data["image"],
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: getHeight(29),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: kBlackTextColor,
                        ),
                      )),
                  LinearPercentIndicator(
                    padding: EdgeInsets.only(left: 0),
                    width: getWidth(121),
                    lineHeight: 6,
                    percent: data['progress'],
                    backgroundColor: kBlackTextColor.withOpacity(0.1),
                    progressColor: kBlackTextColor,
                    barRadius: Radius.circular(10),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                          color: kBlackTextColor,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: getHeight(10),
              ),
              Text(
                "${data['achieved']} / ${data['totalAward']}",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: getHeight(34),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(kBronzeImage),
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      Text(
                        data['totalBronze'].toString(),
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      data['isBronze'] == true
                          ? Image.asset(
                              kTrueIcon,
                              height: 14,
                              width: 14,
                            )
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    width: getWidth(28),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(kSilverImage),
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      Text(
                        data['totalSilver'],
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      data['totalSilver'] == true
                          ? Image.asset(
                              kTrueIcon,
                              height: 14,
                              width: 14,
                            )
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    width: getWidth(28),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(kGoldImage),
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      Text(
                        data['totalGold'],
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      data['totalGold'] == true
                          ? Image.asset(
                              kTrueIcon,
                              height: 14,
                              width: 14,
                            )
                          : SizedBox()
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(29),
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: kGreyShade5Color,
                  child: Center(
                      child: Icon(
                    Icons.close,
                    size: 16,
                    color: kWhiteColor,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: AppStyles().paddingAll24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(30),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kWhiteColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getWidth(17), vertical: getHeight(30)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lifestyle score",
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: getWidth(7),
                          ),
                          GestureDetector(
                              onTap: () {
                                insightDialog();
                              },
                              child: Image.asset(
                                kInfoIcon,
                                height: 15,
                                width: 15,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(17),
                      ),
                      CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 13.0,
                        percent: 0.25,
                        center: Text("25%",
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 16.sp, fontWeight: FontWeight.w600)),
                        progressColor: kBlackTextColor,
                        backgroundColor: kBlackTextColor.withOpacity(0.1),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                      SizedBox(
                        height: getHeight(17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildSmallIndicator(0.75, kPrimaryColor, kSleepIcon,
                              () {
                            // Get.toNamed(kActivityDetailScreenRoute);
                            Get.to(SleepActivityDetailScreen());
                          }),
                          _buildSmallIndicator(
                              0.50, kShadow2DarkColor, kFlashIcon, () {
                            Get.to(SimulationActivityDetailScreen());
                          }),
                          _buildSmallIndicator(0.60, kGreenColor, kLeaveIcon,
                              () {
                            Get.to(NutritionActivityDetailScreen());
                          }),
                          _buildSmallIndicator(0.40, kYellowColor, kShieldIcon,
                              () {
                            Get.to(ResilienceActivityDetailScreen());
                          }),
                          _buildSmallIndicator(
                              0.30, kLightRedColor, kExerciseIcon, () {
                            Get.to(ExerciseActivityDetailScreen());
                          }),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(17),
                      ),
                      Container(
                        height: getHeight(25),
                        width: getWidth(85),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: kLightRedColor1,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: getWidth(8)),
                          child: Center(
                              child: Text(
                            "Very Poor",
                            style: AppStyles.primaryTextStyle().copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up_outlined,
                            size: 16,
                            color: kGreenColor,
                          ),
                          Text(
                            "0 % ",
                            style: AppStyles.blackTextStyle()
                                .copyWith(fontSize: 14.sp, color: kGreenColor),
                          ),
                          Text(
                            "from last week",
                            style: AppStyles.blackTextStyle()
                                .copyWith(fontSize: 14.sp,color: kBlackTextColor.withOpacity(0.6)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(17),
                      ),
                      SizedBox(
                        height: getHeight(50),
                        width: getWidth(206),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Highest",
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(fontSize: 14,color: kBlackTextColor.withOpacity(0.6)),
                                ),
                                Text(
                                  "3 %",
                                  style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Container(
                              height: getHeight(30),
                              width: getWidth(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: kBlackTextColor,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Avg. user",
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(fontSize: 14,color: kBlackTextColor.withOpacity(0.6)),
                                ),
                                Text(
                                  "3 %",
                                  style: AppStyles.blackTextStyle().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getHeight(17),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(18),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(kRiskReportScreenRoute);
                },
                child: Container(
                  height: getHeight(115),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: kWhiteColor),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Risk Report",
                              style: AppStyles.blackTextStyle().copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: getHeight(7),
                            ),
                            Text(
                              "Disease risk based on your\nbehavior.",
                              style: AppStyles.blackTextStyle().copyWith(
                                  fontSize: 15.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getHeight(84),
                          width: getWidth(84),
                          child: Image.asset(
                            kHealthImage,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(18),
              ),
              Container(
                height: getHeight(123),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.topLeft,
                    colors: [
                      kMeroonColor,
                      kDarkPurpleColor,
                      kBlueColor,
                    ],
                    stops: [0.35, 0.55, 1.0],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your global rank",
                              style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: getHeight(7),
                            ),
                            Text(
                              "Bottom 2%",
                              style: AppStyles.whiteTextStyle().copyWith(
                                  fontSize: 31, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getHeight(76),
                          width: getWidth(76),
                          child: Image.asset(
                            kShield1Icon,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(18),
              ),
              Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your past 7 days of health",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:
                            List.generate(controller.days.length, (index) {
                          return Column(
                            children: [
                              Text(
                                controller.days[index],
                                style: AppStyles.blackTextStyle().copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                              Text(
                                controller.dates[index],
                                style: AppStyles.blackTextStyle().copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ],
                          );
                        }),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Obx(() => Stack(
                          alignment: Alignment.center,
                          children: [
                            BarChart(
                                  BarChartData(
                                    alignment: BarChartAlignment.spaceAround,
                                    barGroups: List.generate(
                                        controller.healthData.length, (index) {
                                      return BarChartGroupData(
                                        x: index,
                                        barRods: [
                                          BarChartRodData(
                                            toY: controller.healthData[index]
                                                .toDouble(),
                                            width: getWidth(30),
                                            color: kPrimaryColor,
                                            borderRadius: BorderRadius.circular(5),
                                            backDrawRodData:
                                                BackgroundBarChartRodData(
                                              show: true,
                                              toY: 100,
                                              color: kWhiteColor,
                                            ),
                                          ),
                                        ],
                                        showingTooltipIndicators: [],
                                      );
                                    }),
                                    titlesData: FlTitlesData(
                                      leftTitles: AxisTitles(
                                          sideTitles:
                                              SideTitles(showTitles: false)),
                                      rightTitles: AxisTitles(
                                          sideTitles:
                                              SideTitles(showTitles: false)),
                                      topTitles: AxisTitles(
                                          sideTitles:
                                              SideTitles(showTitles: false)),
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: false,
                                        ),
                                      ),
                                    ),
                                    gridData: FlGridData(show: false),
                                    borderData: FlBorderData(show: false),
                                    barTouchData: BarTouchData(
                                        enabled: false,
                                        ),
                                  ),
                                ),
                                Positioned(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(controller.healthData.length, (index) {
             
              return Text(
                controller.healthData[index].toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
              );
            }),
          );
        },
      ),
    ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Text(
                "Achievements",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: getHeight(16),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kWhiteColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getWidth(22), vertical: getHeight(17)),
                  child: Obx(() => Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: controller.badges.map((badge) {
                          return InkWell(
                            onTap: () {
                              achievementDialog(badge);
                            },
                            child: SizedBox(
                              width: getWidth(61),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    badge["image"],
                                    height: getHeight(70),
                                    width: getWidth(61),
                                  ),
                                  SizedBox(height: 8),
                                  LinearPercentIndicator(
                                    padding: EdgeInsets.only(left: 0),
                                    width: getWidth(61),
                                    lineHeight: 6,
                                    percent: badge["progress"],
                                    backgroundColor:
                                        kBlackTextColor.withOpacity(0.1),
                                    progressColor: kBlackTextColor,
                                    barRadius: Radius.circular(10),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      )),
                ),
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Text(
                "Friends",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: getHeight(16),
              ),
              ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: getHeight(24)),
                    child: Stack(
                      children: [
                        Container(
                          height: getHeight(100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: kWhiteColor),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100)),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        kAvatar11,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                SizedBox(
                                  width: getWidth(18),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Alexa",
                                      style: AppStyles.blackTextStyle().copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: getHeight(7),
                                    ),
                                    Text(
                                      "0 Days ago",
                                      style: AppStyles.blackTextStyle().copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: getHeight(7),
                                    ),
                                    Text(
                                      "Achieved the Bronze Together badge",
                                      style: AppStyles.blackTextStyle().copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                
                               
                              ],
                            ),
                          ),
                        ),
                         Positioned(
                          top: getHeight(14),
                          right: getWidth(12),
                           child: Image.asset(
                             kCheersImage,
                             height: getHeight(46),
                           width: getWidth(32),
                           ),
                         )
                      ],
                    ),
                  );
                },
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kWhiteColor),
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 82,
                            width: 71,
                            child: Image.asset(
                              kFriendsImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: getWidth(21),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Better together",
                                style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: getHeight(6),
                              ),
                              Text(
                                "Self-improvement is more fun \nand effective with friends.",
                                style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(14),
                      ),
                      CustomButton(
                        width: MediaQuery.of(context).size.width,
                        isImage: true,
                        image: kAddFriendIcon,
                        title: "Add Friends",
                        onTap: () {
                          Get.toNamed(kFriendsScreenRoute);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildSmallIndicator(
      double percent, Color color, String image, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircularPercentIndicator(
            radius: 25,
            lineWidth: 5.0,
            percent: percent,
            center: Image.asset(
              image,
              color: color,
              height: getHeight(21),
              width: getWidth(21),
            ),
            progressColor: color,
            backgroundColor: color.withOpacity(0.2),
            circularStrokeCap: CircularStrokeCap.round,
          ),
        ],
      ),
    );
  }
}
