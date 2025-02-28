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

class HsProteinScreen extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  HsProteinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "HS C-reactive protein", image: kBiomarker3),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Inflammation",
              icon: kSoundIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "HS C-reactive protein"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "A c-reactive protein (CRP) test shows the amount of CRP in a blood sample. CRP is a protein produced by the liver in response to inflammation. More CRP appears in the blood if you have inflammation somewhere in the body. High CRP levels usually means there is a condition causing inflammation. Short-term inflammation is typically helpful and protective, such as for fighting an infection or healing an injury. But long-term inflammation is usually harmful and occurs in response to things that cause repeated tissue injury like smoking, poor diet, lack of exercise, gum disease, obesity, diabetes, cancer, arthritis, or bowel diseases. A high-sensitivity (HS) CRP test is used to test small changes in CRP levels and is best for predicting risk of incident of heart attack, stroke, and artery disease. HS CRP levels below 3 mg/L are considered optimal.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.hsProteinHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
