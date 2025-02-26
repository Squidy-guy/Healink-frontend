import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/description_widget.dart';
import 'package:healink_app/common_widgets/details_widget.dart';
import 'package:healink_app/common_widgets/guides_header.dart';
import 'package:healink_app/common_widgets/habit_row_widget.dart';
import 'package:healink_app/common_widgets/sessions_widget.dart';
import 'package:healink_app/screens/guides/controller/guides_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StimulationGuideScreen extends StatelessWidget {
  final GuidesController controller = Get.find();

  StimulationGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getHeight(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(title: "Cognitive\nStimulation", image: kCategory2),
            SizedBox(height: getHeight(16)),
            buildDescription(
              expanded: controller.isStimulationExpanded,
              lessText: """
The various brain functions are susceptible to deterioration by neglect. Engaging in activities that are more cognitively challenging, varied, and novel (and doing so more frequently) is associated with greater cognitive function, a reduced rate of cognitive decline, and lower risk of dementia. 
""",
              fullText: """
The various brain functions are susceptible to deterioration by neglect. Engaging in activities that are more cognitively challenging, varied, and novel (and doing so more frequently) is associated with greater cognitive function, a reduced rate of cognitive decline, and lower risk of dementia. 

Enriched creative, social, and physical activities are important for the preservation and improvement of cognitive functioning. 

Playing a musical instrument, participating in a social group discussion, practicing martial arts, writing a review article, planning one’s day, and learning a new language all challenge certain various cognitive functions. 

It is clear that brain health relies on continual challenge and problem-solving, life-long, and that settling for being a master of used-skills is detrimental.

Retirement, too, leads to a worsening rate of decline as the various cognitive functions become less stimulated; in-turn causing individuals to further avoid such cognitive activities, perpetuating the downward spiral.
""",
            ),
            SizedBox(height: getHeight(15)),
            buildSessionsList(
                sessions: controller.stimulationSessions,
                color: kBlueShade3Color),
            SizedBox(height: getHeight(20)),
            buildHabits(
              title: "Cognitive Stimulation habits",
              list: controller.stimulationHabits,
              textColor: kBlueShade1Color,
            ),
            SizedBox(height: getHeight(24)),
            buildDetails(
                textColor: kBlueShade1Color,
                image: kStimulation1,
                title: "Social Interaction",
                detail: """
The human brain has evolved for millions of years to survive and thrive socially. Humans are extremely well adapted for social interaction, so much so that working in occupations with little-to-no complexity in terms of working with people (such as truck driving, manufacturing, and agriculture), is associated with an increased risk of dementia and worse cognitive functioning later in life compared to individuals who work with people in more complex capacities (e.g. business executive, counseling, teaching, mentoring). This is likely due to these activities being cognitively undemanding, over-learned, or repetitive in nature, i.e. lacking complexity, variation, and novelty. 

People who spend more time engaged in enriched social interaction and discussion have a lower risk of cognitive decline and dementia, delayed dementia onset, slower rate of cognitive decline, and better cognitive functioning later in life. While there are other ways to stimulate and challenge the brain, few things come close to the benefits of frequent, enriched, and challenging social interactions
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting   fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " People experiencing cognitive decline are more likely to “downshift” to a less demanding job or retire earlier, however, retirement is known to cause a more rapid rate of decline in cognitive functions as they become less stimulated.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " people with a rich social network have a 60% lower risk of dementia.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kBlueShade1Color,
                image: kStimulation2,
                title: "Creative Synthesis",
                detail: """
Humans are highly creative and have a tremendous ability to make connections to combine multiple pieces of information (data) to create something new such as a painting, arrangement of flowers, or a written article). The brain needs to be challenged in new ways, life-long, to preserve and improve function. 

Research shows that leisure-time hobbies or occupations that require the ability to synthesize information and create, such as a musician writing music, a researcher writing a review article, or an artist painting, are associated with greater cognitive abilities (e.g. processing speed) and a delayed dementia onset.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " researchers compared people’s various leisure-time activities over a 6 year period and found that people doing at least 6 hours per week of creative hobbies had a 60% reduced risk of dementia than those that didn’t. Playing musical instruments reduced dementia risk by 41%. They also found that people who read news articles had a 182% increased risk of dementia, likely due to it not being an intellectually challenging activity and more of an indulgence.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting   fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " People experiencing cognitive decline are more likely to “downshift” to a less demanding job or retire earlier, however, retirement is known to cause a more rapid rate of decline in cognitive functions as they become less stimulated.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kBlueShade1Color,
                image: kStimulation3,
                title: "Motor Skills",
                detail: """
Motor skills are skills that coordinate movement of the body. Motor skills enable things like balance, coordination, reaction time, and strength to allow big movements like walking and jumping (basic gross motor skills), as well as more complex, high-precision and controlled movements such as using a pencil or playing piano (fine motor skills).

Complex motor learning activities like martial arts, gymnastics, skateboarding, and dancing typically require many physical, cognitive, and emotional skills and involve self-discipline, variation (task switching), and novelty (new challenges). Research shows that martial arts training significantly increases executive functioning (cognitive flexibility, inhibition (self-control), working memory, reasoning, problem-solving, and attention).

Settling for being a master of used-skills is detrimental to preserving and improving cognitive functioning. Executive functioning training requires repeated practice and incrementally increased difficulty to improve. The more complex and unfamiliar the task, the greater the cognitive benefits.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Enhanced executive functioning is correlated to better academic performance, social skills, achievement, wealth, health, life-satisfaction, and lifespan. It also helps people with ADHD.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " executive functions are required for creativity. Musical training has been found to greatly improve executive functioning compared to visual arts training (which improves working memory) and no art training. Playing an instrument also trains fine motor skills.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kBlueShade1Color,
                image: kStimulation4,
                title: "Analyze and Learn",
                detail: """
Frequently challenging one’s mind by learning new skills improves various cognitive functions and lowers dementia risk, while repetitive, over-learned and undemanding activities cause the mind to decay from disuse. The brain needs to be challenged in new ways, life-long, to preserve and improve function. Research shows that working in occupations that require analytical and investigative thinking such as research (analyzing data), is associated with greater cognitive abilities (e.g. processing speed) and a delayed dementia onset.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " people who have learned to speak multiple languages benefit from a delayed dementia onset and preserve executive function for longer during aging.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting   fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " People experiencing cognitive decline are more likely to “downshift” to a less demanding job or retire earlier, however, retirement is known to cause a more rapid rate of decline in cognitive functions as they become less stimulated.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kBlueShade1Color,
                image: kStimulation5,
                title: "Travel & Exploring New\nPlaces",
                detail: """
Spending time in nature is associated with cognitive and emotional benefits. Seeing green spaces and interacting with nature improves self-control, working memory, attention, cognitive flexibility and reduces stress, while exposure to urban environments is associated with attention deficits. Trekking to remote locations with high quality nature and higher biodiversity has greater psychological benefits. While your mind can benefit from routinely walking through familiar green spaces, exploring and navigating new locations has the added benefit of encouraging problem solving. This spatial novelty challenges the brain in ways that help to improve and conserve cognitive function (e.g. learning and memory) throughout life and delay dementia.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Researchers found that students who looked out at a flowering green roof for 40 seconds halfway through a difficult task made significantly less mistakes than those who paused for 40 seconds to gaze at a concrete rooftop.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " other research found that people recovered from surgery twice as fast if their hospital room had a view of a green space compared to those who’s window faced a brick wall.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " in addition to green spaces, blue spaces (aquatic environments) appear to also benefit the brain (maybe even more so!).\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
