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

class SleepGuideScreen extends StatelessWidget {
  final GuidesController controller = Get.find();

  SleepGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getHeight(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(title: "Sleep", image: kCategory1),
            SizedBox(height: getHeight(16)),
            buildDescription(
              expanded: controller.isSleepExpanded,
              lessText: """
Sleep has restorative functions such as protein synthesis, tissue repair, and growth hormone release. Aside from the many restorative functions, sleep also allows for information processing and consolidating new memories.
""",
              fullText: """
Sleep has restorative functions such as protein synthesis, tissue repair, and growth hormone release. Aside from the many restorative functions, sleep also allows for information processing and consolidating new memories.

Individuals with short, disrupted, or inconsistent sleep have shorter lifespans, health-spans, lower mood, and diminished cognitive functioning (memory, attention, processing speed, judgment, decision making, etc.), physical performance, emotional regulation, and abnormal metabolism.

Poor sleep contributes to all causes of mortality such as cancers, heart diseases, dementia, diabetes, obesity, and more. Most people do not get adequate sleep quality, consistency, or duration, compromising well-being.

Ceasing technology use prior to bed, learning how to control pre-sleep cognitions, and waking at a consistent time daily all support sleep.
""",
            ),
            SizedBox(height: getHeight(15)),
            buildSessionsList(
                sessions: controller.sleepSessions, color: kBlueShade2Color),
            SizedBox(height: getHeight(20)),
            buildHabits(
              title: "Sleep Habits",
              list: controller.sleepHabits,
              textColor: kPrimaryColor,
            ),
            SizedBox(height: getHeight(24)),
            buildDetails(
                textColor: kPrimaryColor,
                image: kSleep1,
                title: "Circadian Rhythm and Chronotype",
                detail: """
Having consistent sleep-wake timing is crucial for optimal health. Our circadian rhythm regulates hormone activity, body temperature, hunger, digestion, and metabolic processes. Having consistent sleep-wake and light cycling helps to synchronize the brain’s master clock with peripheral clocks (e.g. pancreas, liver). 

People with irregular sleep-wake periods have an increased risk of all causes of mortality (cancer, diabetes, dementia, heart disease, obesity, suicide).
So figure out how much sleep you need then set a wake time and a sleep-time that allows for the amount of sleep you know you typically need and stick to those times. Your health and life depend on it.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Helpful tip: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Going outside shortly after waking in the morning to get exposure to natural sunlight is great for cueing our central clock.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " A single sleep cycle is 90 minutes so if you normally get 9 hours, that’s 6 sleep cycles.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kPrimaryColor,
                image: kSleep2,
                title: "Preparing for Sleep",
                detail: """
Video games, social interactions, news consumption, and social media use within 30 minutes of bedtime typically activate our sympathetic nervous system (fight-or-flight response) and greatly impact sleep onset and quality.

You can replace these stimulating activities with less stimulating activities that even support sleep by activating the parasympathetic nervous system (rest response) like reading, yoga, and writing a to-do-list. 
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " researchers found that people who wrote a to-do list fell asleep faster than those who wrote about already-accomplished tasks. People also seemed to fall asleep faster the more specifically they wrote their to-do list. Journaling (expressive writing) too seems to relieve stress and aid sleep.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kPrimaryColor,
                image: kSleep3,
                title: "Calm Mind for Sleep",
                detail: """
While in bed intending to sleep, it is helpful to activate the parasympathetic nervous and still the mind to replace stress, excitement, brainstorming, worry, or rumination.

Activities to switch off the sympathetic nervous system and activate the parasympathetic nervous system for sleep include breathing techniques such as 446 breathing, breath counting, slow breathing, the body scan exercise, and feeling the breath with the hand placed on the abdomen. Visualizing a relaxing environment or counting to 1000 also helps sleep onset. The point is, there’s plenty of ways to make ourselves fall asleep within 20 minutes of going to bed.
"""),
            buildDetails(
                textColor: kPrimaryColor,
                image: kSleep4,
                title: "Sleep Hygiene in the\nBedroom",
                detail: """
Using the bedroom for activities other than sleep (and sexual activity) can make us associate the bed and bedroom with wakefulness and make it harder to sleep.

It is best to save reading, eating, watching videos, social discussions, and charging our phone for rooms other than the bedroom. That way, when we go to the bedroom, our brain will know it must sleep-time.

Lying awake in bed for more than around 30 minutes (either after waking in the morning or before sleeping at night) can also inhibit you from associating your bedroom with sleep.

"""),
            buildDetails(
                textColor: kPrimaryColor,
                image: kSleep5,
                title: "Optimal Sleeping\nEnvironment",
                detail: """
The optimal sleeping environment is a quiet, dark room that is cool (15-19 degrees Celsius), and has a comfortable mattress. Lacking one of these can greatly impact sleep.

Turn off all lights, get blackout blinds if you need to remove local outside streetlights, and put phones on silent or place them in another room. Use ear plugs if controlling local sound is not practical. Consider using a fan If the room is warmer than around 19 degrees Celsius. Make sure you have a mattress that supports your body properly and doesn’t cause discomfort.
"""),
            buildDetails(
                textColor: kPrimaryColor,
                image: kSleep6,
                title: "Napping and Caffeine",
                detail: """
Caffeine can disrupt our circadian rhythm timing and reduce deep sleep periods and total sleep time significantly, even when consumed up to six hours before bedtime.

Similarly, napping longer than 20 minutes and napping after 3pm is typically disruptive to nighttime sleep. (note: chocolate contains caffeine).

Adenosine is a molecule that makes us feel tired to remind us to sleep to prevent cellular stress-damage and so the body can regenerate by sleeping. While we are awake, adenosine (a byproduct of activity) accumulates throughout the day (especially so if we are more active). After 16 hours it is typically sufficient to cause us to feel tired enough to sleep. Napping and consuming caffeine late in the day both disrupt appropriate adenosine accumulation.
""")
          ],
        ),
      ),
    );
  }
}
