import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/premium_dialog.dart';
import 'package:healink_app/common_widgets/report_dialog.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'controller/report_controller.dart';

class RiskReportScreen extends StatelessWidget {
  final ReportController controller = Get.find();

  RiskReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 0,
          centerTitle: true,
          surfaceTintColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Expanded(
                  child: Divider(
                color: kBlackTextColor,
                thickness: 2,
              )),
              SizedBox(
                width: getWidth(10),
              ),
              Text(
                "Risk Report",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 16.sp),
              ),
              SizedBox(
                width: getWidth(10),
              ),
              Expanded(
                  child: Divider(
                color: kBlackTextColor,
                thickness: 2,
              )),
            ],
          ),
          // actionsPadding: EdgeInsetsDirectional.all(0),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: AppStyles().paddingAll24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getHeight(15),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.diseaseList.length,
                  itemBuilder: (context, index) {
                    final data = controller.diseaseList[index];
                    return GestureDetector(
                      onTap: () {
                        reportDialog(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: getHeight(26)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: getHeight(44),
                                width: getWidth(37),
                                child: Image.asset(
                                  data["name"] == "Heart disease"
                                      ? kDiseaseImage1
                                      : data["name"] == "Dementia"
                                          ? kDiseaseImage2
                                          : data["name"] == "Cancer"
                                              ? kDiseaseImage3
                                              : data["name"] == "Distress"
                                                  ? kDiseaseImage4
                                                  : kDiseaseImage5,
                                  fit: BoxFit.contain,
                                )),
                            SizedBox(
                              width: getWidth(14),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data["name"],
                                    style: AppStyles.blackTextStyle().copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: getWidth(10),
                                  ),
                                  CustomButton(
                                    title: "Very high risk",
                                    onTap: () {},
                                    height: getHeight(30),
                                    color: kLightRedColor1,
                                    textColor: kRedColor,
                                    textSize: 16,
                                    showShadow: false,
                                    borderRadius: 5,
                                    borderColor: kLightRedColor1,
                                  ),
                                  SizedBox(
                                    height: getWidth(10),
                                  ),
                                  Text(
                                    data["detail"],
                                    style: AppStyles.blackTextStyle().copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(kArrow2Icon,
                                          height: getHeight(18),
                                          width: getWidth(18)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                  child: Text(
                    "Risk is a generic estimate based on the amount of health habits you've completed in the past week.",
                    style: AppStyles.blackTextStyle()
                        .copyWith(fontSize: 10.5, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                Center(
                    child: Text(
                  "Want to improve your score?",
                  style: AppStyles.primaryTextStyle()
                      .copyWith(fontSize: 17, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                )),
                SizedBox(
                  height: getHeight(15),
                ),
                Center(
                    child: CustomButton(
                  title: "Get Healink Premium",
                  onTap: () {
                    Get.dialog(PremiumDialog(), barrierDismissible: false);
                  },
                  height: getHeight(50),
                  width: getWidth(292),
                )),
                SizedBox(
                  height: getHeight(15),
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Get.close(1);
                      },
                      child: Text(
                        "Close",
                        style: AppStyles.primaryTextStyle().copyWith(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
