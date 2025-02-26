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

class Pbmh extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  Pbmh({super.key});

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
                title: "PBMC Telomere length\n(20th%)", image: kBiomarker9),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Ageing",
              icon: kAgeIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "PBMC Telomere length\n(20th%)"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Telomeres are specialized structures at chromosome ends, protecting genetic information from degradation and fusion. They prevent loss of genetic material during cell replication. When your cells are damaged or die, other cells divide to copy themselves and create new cells. Each time a cell replicates its telomeres become shorter due to the \"end replication problem\". The more your cells are exposed to stressors and oxidative damage, the more your cells are forced to divide and replicate. Eventually, a cell can no longer divide as its telomeres become too short (the Hayflick limit). At this point, it is a senescent cell incapable of further division. It can be useful to examine a person’s telomere lengths to indicate their level of biological aging and rate of aging. A cell can repair oxidative damage and add length to the telomeres but if the rate of telomere shortening is faster than their maintenance, the cell is aging. Shorter telomeres indicate that a person's cells are exposed to higher amounts of oxidative agents. Telomere length can be preserved by avoiding oxidative agents that cause cell damage. Smoking, alcohol use, junk foods, stress, poor sleep, lack of exercise, and a low antioxidant diet all contribute to cell damage and telomere shortening.Telomere length can be assessed using DNA in your white blood cells (peripheral blood mononuclear cells - PBMC) and measuring (using QFISH) the telomere lengths of the shortest 20% of telomeres in the sample and taking the average of these. An average PBMC telomere length at the 20th percentile is considered healthy if it is greater than 7kbs in length.",
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
