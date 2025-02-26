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

class ResilienceGuideScreen extends StatelessWidget {
  final GuidesController controller = Get.find();

  ResilienceGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getHeight(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(title: "Resilience", image: kCategory4),
            SizedBox(height: getHeight(16)),
            buildDescription(
              expanded: controller.isResilienceExpanded,
              lessText: """
Resilience is the ability to cope with, adapt to, or recover from adversity or stress effectively. While stress and anxiety are adaptive responses that induce problem-solving, threat detection, and survival, they can also dominate one’s mind and lead to unnecessary suffering if excessive or left unchallenged. 
""",
              fullText: """
Resilience is the ability to cope with, adapt to, or recover from adversity or stress effectively. While stress and anxiety are adaptive responses that induce problem-solving, threat detection, and survival, they can also dominate one’s mind and lead to unnecessary suffering if excessive or left unchallenged. 

Individuals with greater resilience resources: self-regulation, adaptability, problem-solving, hope, gratitude, purpose, awareness, self-insight, self-efficacy, goal-directedness, and social connection experience improved physical and mental health, lifespan, and life-satisfaction.
""",
            ),
            SizedBox(height: getHeight(15)),
            buildSessionsList(
                sessions: controller.resilienceSessions,
                color: kOrangeShade2Color),
            SizedBox(height: getHeight(20)),
            buildHabits(
              title: "Nutrition habits",
              list: controller.resilienceHabits,
              textColor: kOrangeShade1Color,
            ),
            SizedBox(height: getHeight(24)),
            buildDetails(
                textColor: kOrangeShade1Color,
                image: kResilience1,
                title: "Mediterranean Diet",
                detail: """
A poor ability to step back to observe one’s own thought processes and emotion underlies various psychiatric conditions such as depression and anxiety. Mindfulness practices (awareness of experience) improve speed and efficiency of attentional cognitions. Mindfulness is the state of observation of one's thoughts and sensory experience without judgment. Put simply, it is the practice of continually observing the present moment without attachment. This type of practice adapts the brain to more easily “check-in” on one’s own experience, rather than be “caught-up” in it. This is important as it allows for more intentional, deliberate responses rather than automatic reactions to events and stimuli.  

Attentional practices train the ability to manipulate the position and breadth of attention and to disengage and redirect attention. Training involves systematically and intentionally directing and sustaining attention toward the processes of thoughts, emotions, and perceptions without analyzing their content. “Meta-awareness” refers to being aware of processes of consciousness. In absence of meta-awareness, one becomes fused with their experience. This is experiential fusion: aware of the objects of attention but not of the processes of thought, emotion, and perception. Experiential fusion is the opposite of meta-awareness. Mindfulness training reverses this fusion with experiences and gives distance and psychological flexibility. This can reduce depressive symptoms and addiction. Mindfulness helps to disengage from detrimental rumination and obsession by bringing awareness to the present moment. Training causes structural and functional changes in attention-related networks in the brain. 

Attentional practices can include either focused-attention (FA) or open-monitoring (OM). FA uses attention focused on a single object (e.g. breath, sounds, body sensations) or subject (thoughts). Importantly, FA does not refer to the stable attentiveness when you are engaged in watching a movie, playing a game, or conversation. OM is a broadened scope of attention to include the dynamic flow of emotion, thought, perception, and awareness. Suitable attitudes while in training include non-striving, non-judgmental awareness, acceptance, patience, a beginner's mind, and letting go and letting things be.

Mindfulness training can be as simple as paying attention to the rise and fall of the breath, sensations of the body, local sounds, and incoming thoughts.
Daily mindfulness practices are useful in optimizing awareness over time. Mindfulness strategies have proven their efficacy in treating and preventing stress, depression, and anxiety over the past 30 years. The Mindfulness-based stress reduction (MBSR) program is currently prescribed to patients in hundreds of hospitals around the world.
Fruit, Vegetables, grains, nuts, seeds, beans, legumes, herbs and spices are the largest portion of the diet. Olive oil, nuts, and fish are favored over butter and margarine. The preference of animal products is fish and seafood (~2 days per week) with little to no red meat and less poultry, eggs, and dairy.
"""),
            buildDetails(
                textColor: kOrangeShade1Color,
                image: kResilience2,
                title: "Cognitive Control and Reasoning",
                detail: """
Thoughts, emotions, and perceptions are not accurate depictions of reality. Human thought processes have evolved to increase survival, not necessarily for accuracy and psychological wellbeing. It is common to experience automatic, involuntary thought processes that, if allowed to pass without first being challenged, can be detrimental to emotional wellbeing. 
"""),
            Center(
              child: Text(
                "The cognitive model",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: getHeight(9)),
            Center(
                child: Image.asset(kModel,
                    height: getHeight(245), width: getWidth(281))),
            SizedBox(height: getHeight(9)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: Text(
                """
An anxious person's attention and interpretation is biased towards negative information. These intrinsic mechanisms that aid survival can interfere with health and well-being, especially when excessive, contributing to stress, depression, and anxiety. This is why strategies to control cognitive distortions, such as cognitive behavior therapy (CBT), improve psychological well-being. Self-inquiry is used to understand how thoughts shape emotions (and vice versa) which shapes one’s subjective experience and self concepts. 
     
Our interpretations and beliefs shape our reality. Self-inquiry involves analysis and deconstructing our thoughts and interpretations to test if they are rational or irrational. Analyzing and deconstructing our interpretations of experiences (self-inquiry) allows us to put them to the test and examine the evidence (disputation) rather than making assumptions. 
            
Depression typically involves a bias against oneself, negative expectations, and being overly self-critical. Common cognitive distortions, many of which are interrelated, include jumping to conclusions (e.g. assuming you know for certain what will happen next or what others are thinking), catastrophizing, mental filtering (focusing only on the negative), emotional reasoning (thinking emotions reflect what really is), and control fallacies such as thinking something cannot be controlled when it can (blame) and thinking something can be controlled when it can’t (personalization).
        
One can restructure irrational and unbalanced beliefs (cognitive restructuring) by learning to notice self-defeating negative thinking patterns by examining the evidence for and against them. For example, an individual might perceive that they are “not good at anything” and hate themself as a result. They can correct this error in reasoning by recalling many instances where they were good at certain things. This helps to correct our implicite negativity bias.
            
We can also reflect on our day (e.g. in the evening) to see if we can catch ourselves using a cognitive distortion and think about what healthier and more rational alternatives would have been.
            
We are not affected by events but by our interpretations of them. We have power over our mind but not always outside events. It helps to question implicit interpretations and examine the evidence; avoid assumption making; focus on what we control and accept the rest as it is.
                  """,
                style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Quote: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " \"It is not things that disturb us, but our interpretation of their significance\" - Epictetus\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Quote: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " “Fortune falls heavily on those for whom she’s unexpected. The one always on the lookout easily endures.” - Seneca\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting short video: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text: "https://www.youtube.com/watch?v=byQrdnq7_H0\n",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: kBlackTextColor),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kOrangeShade1Color,
                image: kResilience3,
                title: "Delaying Gratification",
                detail: """
Impulsivity is an inability to wait. Training the ability to wait and avoid responding prematurely can improve performance and productivity as our pleasure and pain system and motivation changes. Without the discipline to complete what we start and delay gratification, we wouldn’t ever complete a long, time-consuming task such as running a marathon, writing a dissertation, or starting a new business.

Delaying gratification is the ability to resist temptations and not act impulsively. This inhibitory control (self-control) over one’s behavior helps us to avoid indulging in short-term pleasures (instant gratification) that undermine our best interests. Examples include eating sweets when we are trying to lose weight, using social media when we ought to be sleeping, responding to difficult people with violence, jumping to conclusions, pressing “send” on an email before reading it, and blurting out everything that comes to mind. These activities signify impulsivity and a deficit in inhibitory control.

Overindulging, without restraint, in certain activities and substances can cause us to develop a dependency on such things once a threshold has been reached in the brain. As we overindulge, the brain responds by adapting in ways that make us like (enjoy) it less but want (crave) it more. Over time the brain requires a greater stimulus (mediated by dopamine) to get the same level of satisfaction, which results in increased anxiety (due to craving) and reduces our self-control that affects other parts of our life. People with a dependency to nicotine, for example, also tend to have other dependencies such as caffeine and junk food. This is due to the part of the brain responsible for reward being reinforced over time from repeated indulgence and lack of delaying gratification. 

Resisting instant gratification (impulsive pleasures) in favor of behaviors that push us towards longer-term, more meaningful goals (delayed gratification) can be achieved by abstaining from such activities and substituting them with healthier alternatives. Over time, the brain responds to this abstinence by adapting in ways that reset our reward pathways for said activity or substance as they decay from disuse.

Many people have become trapped in a dependency to modern conveniences like social media (and other dopamine slot-machines) that give us pleasure in the short-term but suffering in the long-term. Deliberate training is more essential in the modern world of ultra-convenience and ultra-stimulation accessible in an instant. This is often referred to as “dopamine resetting” which involves going for extended periods without indulgences and modern conveniences. This can include going a day without a phone or internet, taking a cold shower (voluntary discomfort), going trekking with minimal items, being bored, and living more closely to how we have evolved - simply. 

If you feel a craving to indulge in something, just wait, wait as long as you can to allow the brain to reset its reward system and adapt to the change in circumstance. Remind yourself it’s ok to be bored and you’ll start to notice that simple things (e.g. sunset, flowers, or working on your long term-goals) become more rewarding again as your dependencies fade. 
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Inhibitory control (e.g. behavioral control) early in life can predict outcomes later in life. Children with better inhibitory control (less impulsive, better at waiting their turn, less easily distracted, and more persistent) are more likely to stay in school, have better physical and mental health, satisfaction, and more income, and less likely to be overweight, have high blood pressure, and take risky behaviors such as smoking and drug use.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " The hedonic treadmill, also known as hedonic adaptation, refers to the tendency to quickly return to a baseline level of satisfaction after major positive or negative change in one’s life circumstances. This is evident in many people pursuing one pleasure after another as the surge of happiness that's felt after a positive event returns to a steady baseline over time. It’s also why people with 1 million dollars are no more satisfied with life than people with \$100,000 - they have acclimatized to their circumstances.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Hot tip: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Let the process of working towards a goal be the reward rather than the end-goal itself. For example, enjoy working towards a promotion, and when you get it, try to delay telling your friends about your promotion for a few days; keep the celebration minimal, and move onto enjoying working toward the next thing. If we make the outcome the reward instead of the process, we will be less satisfied because an outcome is only short-lived but a process can last forever. \n",
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 16.sp,
                      ),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " as people get older, their executive functioning (such as inhibitory control of thoughts, attention, and behavior) tends to decline; making them more prone to distractions and suppressing irrelevant information.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " everytime we indulge in a pleasurable activity, a molecule (deltaFosB) accumulates in the brain, and once it reaches a critical threshold, a molecular switch is thrown which alters our DNA and causes dependency (addiction), making it harder to revert.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Inhibitory control is a core component of our executive functioning. Researchers testing the executive function of inmates in prison found that they were able to predict who were the violent criminals and who were the non-violent criminals based only on inmates' executive function results.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " the Stanford marshmallow experiment in 1972 was a famous study on delayed gratification. Children were offered one reward immediately or two small rewards if they waited. When they followed up with these subjects later in life they found that the children that were able to delay gratification had better life outcomes (academic performance, health, etc.).\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Quote: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " “In times of peace, prepare for war” - Niccolò Machiavelli\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Quote: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          "  “only in the short-term is pleasure good and pain bad” - Jesse, Healink founder\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kOrangeShade1Color,
                image: kResilience4,
                title: "Achievement and Life\nPurpose",
                detail: """
Dreamers are often non-doers. Positive thinking is helpful and pleasurable in the moment but it can cause us to prematurely achieve our goals and reduce our motivation to put in the effort required to actually make our goals a reality. Optimistic thinking can cause us to be more depressed in the long-run. High positive expectations lead to low effort which leads to low success which leads to poor mental and physical health and poor personal development as our goals linger. Positive thinking, fantasies, and dreams are useful for exploring and developing possibilities for our future when we combine them with reality.
﻿
A highly effective approach, known as the “WOOP” intervention, solves this dilemma of wishful thinking. WOOP is an acronym for its four components: Wish, Outcome, Obstacle, Plan. The four-step process involves clarifying what you want (wish) and imagine the outcome coming true (positive thinking), then balance this with a recognition of the obstacles that may stand in your way of achieving this outcome (e.g. your anxiety, skill, circumstances), then make a plan to overcome the obstacle(s) (e.g.”if___happens then i will overcome it by___”). This exercise can be done anytime in a matter of minutes mentally and is a scientifically valid goal-setting approach to changing our behavior for health and success. 

The WOOP framework can also be combined with the “SMART” framework, another highly effective approach to goal-setting and success. The SMART guidelines are to ensure the goals one sets are Specific, Measurable, Achievable, Relevant, Time bound. The WOOP and SMART frameworks help us to increase our sense of goal-directedness, life-satisfaction, and self-efficacy. Self-efficacy, which is the belief that one is capable of producing results and reaching goals (“i can do it”), is a determinant of mental and physical health, higher achievement, and more social integration. Mastery experiences are the direct experiences we have when taking on new challenges and succeeding first-hand, and are powerful drivers of self-efficacy. 

People who believe they have control over future events (internal locus of control - LOC) are more likely to use that control to achieve personal goals (mastery experience), which increases a sense of self-efficacy that further helps one to overcome situations and leads to enhanced health and wellbeing.

Individuals with a greater internal locus of control perceive a greater control over their circumstances and engage in action taking more than those with an external LOC because they understand that success depends on their agency. People with a higher degree of internal LOC tend to experience less depression, stress, and anxiety than people with lower internal LOC who view themselves as having little control over their lives and attribute success and failure to external factors such as luck, destiny, fate, or coincidence. 

Hope is a sense of goal-direction, determination, and an expectation that the goals can be achieved using effort. It is action-oriented. Like optimism, hope is also future-oriented. However, unlike optimism, which assumes the future will be inevitably good (which causes us to not put in the hard work), hope is a motivation to persevere toward an end state, knowing that the goal may not be achieved, but that hard work (agency) and pathways-thinking (to overcome obstacles) can make it happen. Hope is a combination of agency and pathways-thinking.   

Life satisfaction requires more than positive emotion and freedom of suffering, it requires purpose and engagement. Engagement is a state where an individual is engrossed in a personally interesting and fulfilling activity to the extent where they may lose track of time (“getting lost down the rabbit hole”). It is a focus on a task in the present. It is a state known also as ‘flow’. Flow most easily comes from using one’s character strengths. When an individual’s activities combine their character strengths with their interests they are more likely to experience enguagment, sense of purpose, and life-satisfaction. 

Interesting fact: post-university depression is a common occurrence for many graduates, likely resulting from ambiguous direction and purpose after graduating.

Example of mastery experience: a person who does not consider themselves skilled at cooking can increase their self-efficacy by successfully cooking different meals for several days.

Quote:  "Self-belief does not necessarily ensure success, but self-disbelief assuredly spawns failure." - Albert Bandura

Quote: “A winner is a dreamer who never gives up” - Nelson Mandela 

Quote: "Things may come to those who wait, but only things left by those who hustle; whatever you are, be a good one" - Abraham Lincoln.
"""),
            buildDetails(
                textColor: kOrangeShade1Color,
                image: kResilience4,
                title: "Gratitude and Appreciation",
                detail: """
Gratitude is a trait of noticing and appreciating the positive in life. Grateful people experience more positive emotions and positive social relationships and are less angry, stressed, anxious, depressed, and vulnerable.They also tend to be more competent and achievement striving.

Research has found that gratitude directly causes improved wellbeing. Gratitude can be towards others, towards one’s abilities, or towards one’s environment. Recovery from traumatic experiences are affected by the extent to which one is able to derive a benefit from the experience (positive reappraisal). This often results in levels of reported well-being greater than before the trauma.

Gratitude is correlated with living authentically (behaving in accordance with personal values and knowing oneself).

Gratitude is related to forgiveness which is associated with reduced psychopathology and important in positive functioning. Gratitude is correlated with low narcissism, and also seems to promote social relationship formation, maintenance, strengthening, connection, satisfaction, conflict resolution, and reciprocally helpful behavior. Gratitude is also beneficial in physical health by attenuating stress, especially given that sleep is critical to physical health and is disrupted by stress. Gratitude interventions have been shown to improve sleep duration and rejuvenation on waking by influencing cognitions prior to sleep. 

Gratitude predicts 8% of differences in life-satisfaction and 2-6% in personal growth, positive relationships, purpose, and self-acceptance. Interventions that have shown to be clinically relevant include daily listing of things to be grateful for, grateful contemplation, and behavioral expression of gratitude.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " adversity can lead to positive transformations. Adversarial growth (or post-traumatic growth) can occur whenever an individual experiences a challenging situation if they integrate the traumatic-experience information into their current belief system and perspectives rather than changing their beliefs because of the experience.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Quote: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " \"It is not the man who has too little, but the man who craves more, that is poor.” - Seneca\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
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
                          " next time you have a setback such as your car breaking-down or dropping your food, try to think about positive aspects that you can be grateful for. In the case of a broken-down car, you might reappraise the situation as “I get to walk home on a nice sunny day and get some exercise.” This should not be confused with hoping for setbacks, but rather, adopting a positive perspective for things that can’t be undone.\n",
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 16.sp,
                      ),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kOrangeShade1Color,
                image: kResilience4,
                title: "Gratitude and Appreciation",
                detail: """
Social connectedness (SC) and loneliness is a subjective sense of connection with others and a community. SC (subjective) predicts physical and mental health outcomes, life-span, cognitive function and dementia onset, and life-satisfaction far more than social contact (objective). Although mental health and SC enhance each other, SC more strongly influences mental health. 

Humans are social beings. Developing new social connections and reaffirming existing connections is highly effective in improving life-satisfaction. Individuals who make new social connections are better able to recover from depression and less likely to become depressed. SC acts as a useful protective resource. Subjective SC involves feelings of care such as companionship, love, or affection, both for others and from others. It also involves a sense of belonging to a community or group.

Interventions that attenuate subjective loneliness are known to improve mental health. SC interventions may be self-help, in a group, or one-to-one and may involve activities, support, service provision, contemplation, or education.

Ways to increase sense of SC include:
        Personal contact (one-to-one) (e.g. scheduled contact with someone from one’s social network). 
        Activity and discussion groups (e.g. exercise, gardening projects, movie discussion).
        Animal contact.
        Skills course (education such as MBSR, friendship development, self-management).
        Varied/non-specific social support or service delivery (transport, information access, social and leisure activities, health and financial services).
        Model of care (interaction with plants, animals, and children).
        Reminiscence (share recollections with a group).
        Support groups (individuals choose a topic of discussion related to their needs and challenges).

Reflecting on past experiences of relatedness promotes subjective sense of SC and prosocial intent. Another personal intervention to promote SC is to create a list or mind-map of individuals who are beneficial in one’s social network (excluding unhealthy connections) and thinking of ways to cease or reduce contact in unhealthy or unsupportive relationships. This map of beneficial social contacts may include family, friends, colleagues, and professional or online contacts. This may help to put emphasis on keeping up regular contact with these individuals (scheduled contact) or to be the subject of contemplative self-help practices that enhance subjective connectedness such as gratitude practices, loving-kindness meditation, or reflection of relatedness experiences. 

Another activity is to select one person from your social network and list various positive things you might say to them. To help improve self-compassion, one can also encourage them to reciprocate with compliments. A kind act of service and showing interest in their life can further strengthen the relationship. 

Face to face is the ideal method of contact as more information is communicated (body language, scent, touch, voice tone, and mood). Tactile neurons in the skin (Tactile-C afferent fibers) are responsible for detection of gentle stroking touch and “creature-like” temperature. This is implied to have social utility in humans and is referred to as the “social touch”. Tactile-C neurons mediate oxytocin (a hormone and neurotransmitter) release in the brain. Oxytocin facilitates social bonding by aiding significant rewiring of the brain to allow for inclusion of another individual into one’s life. Oxytocin concentrations increase particularly during early romantic relationships and early parenthood. Affectionate touch from a significant other or child promotes oxytocin release into the blood which enhances one’s cognitive ability to detect social cues and reduce stress hormone (e.g. cortisol) levels in the body and reduces cardiovascular responses. 
Sharing emotional experiences with others is effective in regulating emotion and may be especially useful in the midst of emotionally trying circumstances. Sharing positive news and celebrating achievement (being actively constructive) is also beneficial as it bolsters relationships. Depression can greatly impact a romantic partnership as supporting a partner with depression can cause oneself to become depressed. Stress, anxiety and depression (SAD), bipolar disorder, psychosis, and trauma-related disorders also impact SC and relationship formation.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting Fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Loneliness is an increasingly common problem and is the main reason for psychological counseling.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
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
                          " Loving-kindness (LK) training aims to cultivate kind wishes/intentions towards particular targets. LK practices improve SC. LK practice involves silently saying phrases such as “may you be well” and “may you be free of suffering”, directed at a target. A session of LK typically starts simple with oneself being the target, then loved ones, neutral ones, difficulties ones, and finally, all beings. It also helps to visualize the target, perhaps their smiling face, as you wish them well and Imagining yourself hugging the target. LK practices enhance other-focused positive emotions.\n",
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
