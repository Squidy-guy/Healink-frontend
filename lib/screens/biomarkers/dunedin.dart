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

class Dunedin extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  Dunedin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(
                title: "Dunedin PACE\nepigenetic clock", image: kBiomarker12),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Ageing",
              icon: kAgeIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Dunedin PACE"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail: "",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.dunedinHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
