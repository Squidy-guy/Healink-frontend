import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/biomarker_header.dart';
import 'package:healink_app/common_widgets/biomarker_info_list.dart';
import 'package:healink_app/common_widgets/biomarker_progress_bar.dart';
import 'package:healink_app/common_widgets/biomarker_tags.dart';
import 'package:healink_app/common_widgets/bottom_buttons.dart';
import 'package:healink_app/common_widgets/habit_row_widget.dart';
import 'package:healink_app/screens/biomarkers/controller/biomarker_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';

class TriglyceridesScreen extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  TriglyceridesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "Triglycerides", image: kBiomarker1),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(tag: "Heart disease", icon: kHeartIcon),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Triglycerides"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Triglycerides are a type of fat that the body uses for energy. If you burn less calories than you consume, the body turns these extra calories into triglycerides to be stored in fat cells for later use. When later needed, the triglycerides are released into the bloodstream and taken up by muscle cells to use. Over time, elevated triglycerides in the blood can affect arteries. This is why high triglyceride levels in the blood is a predictor of heart disease and stroke. A blood lipid profile test will show your levels of fats in the blood. This test requires fasting (no eating) for at least 8 hours before blood is taken for assessment. The test is performed either by a blood draw or by using an at-home blood lipid analyzer. A triglyceride level below 150 mg/dL is considered optimal. Elevated levels above 150 mg/dL suggest a metabolic imbalance. Poor diet, alcohol consumption, smoking, poor sleep, stress, and lack of exercise are lifestyle contributors to elevated circulating triglycerides levels.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.bloodGlucoseHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
