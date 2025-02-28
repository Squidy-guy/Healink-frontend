import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/biomarker_widget.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/biomarkers/controller/biomarker_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BiomarkerScreen extends StatelessWidget {
  final BiomarkerController controller = Get.find();

  BiomarkerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppStyles().paddingHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getHeight(74)),
              Center(
                child: Text(
                  "Biomarkers",
                  style: AppStyles.blackTextStyle()
                      .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: getHeight(30)),
              Obx(() => GestureDetector(
                    onTap: controller.toggleExpansion,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(
                                  controller.isExpanded.value ? 20 : 0),
                              bottomRight: Radius.circular(
                                  controller.isExpanded.value ? 20 : 0)),
                          gradient: LinearGradient(colors: [
                            kPrimaryColor,
                            kPrimaryColor,
                            kShadow3Color
                          ])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: getHeight(24)),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getWidth(25), right: getWidth(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Measure your\nhealth with key\nbiomarkers",
                                      style: AppStyles.whiteTextStyle()
                                          .copyWith(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(width: getWidth(50)),
                                    Image.asset(kTubes,
                                        height: getHeight(93),
                                        width: getWidth(93)),
                                  ],
                                ),
                                Icon(
                                  controller.isExpanded.value
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  color: kGreyShade17Color.withOpacity(0.48),
                                  size: 20.sp,
                                ),
                              ],
                            ),
                          ),
                          if (controller.isExpanded.value)
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: kBlueShade4Color),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: getWidth(25), right: getWidth(20)),
                                child: Column(
                                  children: [
                                    SizedBox(height: getHeight(24)),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(kGlasses,
                                            height: getHeight(93),
                                            width: getWidth(84)),
                                        SizedBox(width: getWidth(15)),
                                        SizedBox(
                                          width: getWidth(201),
                                          child: Text(
                                            "Each biomarker is based on scientific evidence of known predictors of future disease development and shortened lifespan. For example, fasting blood glucose is a biomarker that strongly predicts development of diabetes.",
                                            style: AppStyles.blackTextStyle(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: getHeight(16)),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(kScience,
                                            height: getHeight(93),
                                            width: getWidth(84)),
                                        SizedBox(width: getWidth(15)),
                                        SizedBox(
                                          width: getWidth(201),
                                          child: Text(
                                            "Healink helps you keep on-top of disease prevention by helping you test and track key biomarkers every three months. Any potential risks will be flagged to help you take action to optimise your health.",
                                            style: AppStyles.blackTextStyle(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: getHeight(16)),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(kMedical,
                                            height: getHeight(93),
                                            width: getWidth(84)),
                                        SizedBox(width: getWidth(15)),
                                        SizedBox(
                                          width: getWidth(201),
                                          child: Text(
                                            "Want to know how your lifestyle affects your health? Healink helps you keep on the lookout for health risks with 15 key biomarkers that serve as predictors of disease and mortality risk.",
                                            style: AppStyles.blackTextStyle(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: getHeight(16)),
                                    Text(
                                      "Disclaimer: Your results may not always reflect your true risk of disease. Relying solely on these biomarkers for disease prevention is not advised.",
                                      style: AppStyles.darkGreyTextStyle()
                                          .copyWith(fontSize: 13.sp),
                                    ),
                                    SizedBox(height: getHeight(24)),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCommonContainer(title: "Data needed", number: "15"),
                  SizedBox(width: getWidth(32)),
                  InkWell(
                      onTap: () {
                        controller.toggleRisk();
                      },
                      child:
                          _buildCommonContainer(title: "Risks", number: "1")),
                ],
              ),
              SizedBox(height: getHeight(20)),
              Text(
                "Predictive biomarkers",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(20)),
              Obx(
                () => controller.isRisks.value
                    ? InkWell(
                        onTap: () {
                          Get.toNamed(kCortisolScreenRoute);
                        },
                        child: buildBiomarkersWidget(
                            item: controller.biomarkers[7]))
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: controller.biomarkers.length,
                        itemBuilder: (context, index) {
                          var item = controller.biomarkers[index];
                          return InkWell(
                              onTap: () {
                                List<String> categoryRoutes = [
                                  kTriglyceridesScreenRoute,
                                  kFastingBloodGlucoseScreenRoute,
                                  kHsProteinScreenRoute,
                                  kBloodPressureScreenRoute,
                                  kWaistToHipRatioScreenRoute,
                                  kVo2MaxScreenRoute,
                                  kGripStrengthScreenRoute,
                                  kCortisolScreenRoute,
                                  kPbmcScreenRoute,
                                  kPlasmaScreenRoute,
                                  kNadScreenRoute,
                                  kDunedinScreenRoute,
                                  kCtDnaScreenRoute,
                                  kGfapScreenRoute
                                ];

                                if (index < categoryRoutes.length) {
                                  Get.toNamed(categoryRoutes[index]);
                                }
                              },
                              child: buildBiomarkersWidget(item: item));
                        },
                      ),
              ),
              SizedBox(height: getHeight(30)),
              Center(
                  child: CustomButton(
                height: 48,
                width: 291,
                title: "Download test list",
                onTap: () {},
              )),
              SizedBox(height: getHeight(16)),
              Image.asset(kTestList,
                  height: getHeight(487), width: getWidth(345)),
              SizedBox(height: getHeight(30)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCommonContainer(
      {required String title, required String number}) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(20), vertical: getHeight(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          color: kBlueShade4Color,
          border: Border.all(color: kBlueShade5Color, width: 2)),
      child: Row(
        children: [
          Text(title,
              style: AppStyles.blackTextStyle()
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)),
          SizedBox(width: getWidth(10)),
          Container(
            height: getHeight(30),
            width: getWidth(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBlueShade6Color,
            ),
            child: Center(
              child: Text(number,
                  style: AppStyles.whiteTextStyle()
                      .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w600)),
            ),
          )
        ],
      ),
    );
  }
}
