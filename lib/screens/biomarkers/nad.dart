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

class Nad extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  Nad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "NAD+", image: kBiomarker11),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Ageing",
              icon: kAgeIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "NAD+"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Nicotinamide adenine dinucleotide (NAD+) is a coenzyme involved in metabolism and drives energy (ATP) production in all cells. NAD+ also plays a role in DNA repair.A major component of aging and cell senescence is attributed to oxidative stress. Oxidative stress is caused by the accumulation of reactive oxygen species (ROS) that can damage DNA, cell membranes, and proteins and contribute to neurodegeneration, cancer, aging, inflammation, cardiovascular dysfunction, and metabolic disorders. When ROS break DNA, an enzyme (PARP) uses NAD+ to recruit DNA repair enzymes to the site of DNA breakage so the DNA can be repaired. Sirtuin enzymes that regulate and protect cells also rely on NAD+.  If lots of cell and DNA damage occurs, NAD+ can begin to become depleted faster than the cell can make it. This can result in cell death as the cell’s NAD+ pool depletes and becomes insufficient to sustain either DNA repair or energy production for the cell.NAD+ levels can be measured in your blood to indicate your aging. NAD+ levels tend to decline with aging due to inflammation and cell damage. Healthy lifestyle approaches such as fasting, caloric restriction, smaller food portions, aerobic exercise, resistance exercise (strength training), regular sleeping and waking patterns, heat/cold shock, and a diet high in polyphenols can Increase NAD+ levels.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.nadHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
