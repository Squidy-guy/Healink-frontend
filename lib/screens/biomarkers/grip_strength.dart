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

class GripStrength extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  GripStrength({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "Grip strength", image: kBiomarker7),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Longevity",
              icon: kMuscleIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Grip strength"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Your grip strength is measured by the amount of kilograms you can compress using a grip strength dynamometer. Grip strength is a strong predictive biomarker that is associated with lifespan. Research has found that for every 5 kg decrease in grip strength, risk of dying from any cause increased by 16%. The link between grip strength and mortality risk has been found regardless of age, income bracket, smoking status, exercise status, nutrition status, number of prescribed drugs, and number of chronic diseases. Grip strength is even a better predictor of early death than blood pressure, muscle mass, and physical activity. It seems that measuring grip strength indirectly captures a wide variety of information at once such as overall strength, upper limb function, bone density, injuries, malnutrition, cognitive impairment, depression, sleep problems, diabetes, disease, and quality of life. Grip strength appears to act as a “catch-all”. Low grip strength can be due to poor and inconsistent sleep, lack of strength exercise, smoking, alcohol, and poor nutrition.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.gripStrengthHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
