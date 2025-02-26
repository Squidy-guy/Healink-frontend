import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResilienceHabitController extends GetxController {
  var scrollController = ScrollController();

  var firstHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Inflammation","type" : "unhealthy"},
    {"issue" : "Cortisol","type" : "unhealthy"},
    {"issue" : "Pain","type" : "unhealthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
    {"issue" : "Parasympathetic activity","type" : "healthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Meta-awareness","type" : "healthy"},
    {"issue" : "Attention control","type" : "healthy"},
    {"issue" : "Acceptance","type" : "healthy"},
    {"issue" : "Self-awareness","type" : "healthy"},
    {"issue" : "Present-moment awareness","type" : "healthy"},
    {"issue" : "Stress coping","type" : "healthy"},
    {"issue" : "Digestion","type" : "healthy"},
    {"issue" : "Sympathetic activity","type" : "unhealthy"},
    {"issue" : "Experiential fusion","type" : "unhealthy"},
    {"issue" : "Depression","type" : "unhealthy"},
    {"issue" : "Rumination","type" : "unhealthy"},
    {"issue" : "Anxiety","type" : "unhealthy"},
    {"issue" : "Intrusive thoughts","type" : "unhealthy"},
  ].obs;

  var secondHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Cognitive control","type" : "healthy"},
    {"issue" : "Acceptance","type" : "healthy"},
    {"issue" : "Depression","type" : "unhealthy"},
    {"issue" : "Anxiety","type" : "unhealthy"},
    {"issue" : "Life satisfaction","type" : "healthy"},
    {"issue" : "Stress coping","type" : "healthy"},
    {"issue" : "Problem solving","type" : "healthy"},
    {"issue" : "Reasoning","type" : "healthy"},
    {"issue" : "Rational thought","type" : "healthy"},
    {"issue" : "Deconstructive thinking","type" : "healthy"},
  ].obs;

  var thirdHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Dopamine baseline","type" : "healthy"},
    {"issue" : "Psychological resilience","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Stress coping","type" : "healthy"},
    {"issue" : "Attention control","type" : "healthy"},
    {"issue" : "Depression","type" : "unhealthy"},
    {"issue" : "Anxiety","type" : "unhealthy"},
    {"issue" : "Goal attainment","type" : "healthy"},
    {"issue" : "Impulsivity","type" : "unhealthy"},
    {"issue" : "Self-regulation","type" : "healthy"},
    {"issue" : "Productive behaviors","type" : "healthy"},
    {"issue" : "Destructive behaviors","type" : "unhealthy"},
  ].obs;

  var fourthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Depression","type" : "unhealthy"},
    {"issue" : "Anxiety","type" : "unhealthy"},
    {"issue" : "Goal-directedness","type" : "healthy"},
    {"issue" : "Mastery experience","type" : "healthy"},
    {"issue" : "Self-efficacy","type" : "healthy"},
    {"issue" : "Hope","type" : "healthy"},
    {"issue" : "Goal attainment","type" : "healthy"},
    {"issue" : "Life satisfaction","type" : "healthy"},
    {"issue" : "Impulsivity","type" : "unhealthy"},
  ].obs;

  var fifthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "Stress coping","type" : "healthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
    {"issue" : "Depression","type" : "unhealthy"},
    {"issue" : "Anxiety","type" : "unhealthy"},
    {"issue" : "Life satisfaction","type" : "healthy"},
  ].obs;

  var sixthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "Inflammation","type" : "unhealthy"},
    {"issue" : "Cortisol","type" : "unhealthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Pain","type" : "unhealthy"},
    {"issue" : "Parasympathetic activity","type" : "healthy"},
    {"issue" : "Sympathetic activity","type" : "unhealthy"},
    {"issue" : "Depression","type" : "unhealthy"},
    {"issue" : "Anxiety","type" : "unhealthy"},
    {"issue" : "Life satisfaction","type" : "healthy"},
    {"issue" : "Sense of belonging","type" : "healthy"},
    {"issue" : "Psychosocial support","type" : "healthy"},
    {"issue" : "Overall wellbeing","type" : "healthy"},
  ].obs;

  final List<String> messages = [
    "Hmm.\n\nI see you haven’t done this habit in a few days.\n\nLet’s see what’s happening.",
    "Do you feel like you’re focusing on too many habits? \n\nYou can remove this habit from your routine or set it as your focus habit.",
    "Has your self- control been too low lately to do this habit? \n\n Modify your environment ahead of time to avoid having your willpower challenged in the first place.",
    "Is there a competing motivation that’s preventing you from completing this task? \n\nTry to postpone and substitute the unhelpful behavior with an alternative.",
    "Do you feel like your motivation is too low to meet the difficulty of this task? \n\nHigh motivation is usually unsustainable, so try to reduce the difficulty of the task to match your current motivation level.",
    "Do you feel like it’s not rewarding to do this behaviors? \n\nTry changing the way you do it to make it more fun enjoyable and new.",
    "Do you lack the necessary skill or knowledge for this task? You can learn more about this habit from its “quick guide”",
    "Do you need a prompt to remind you to do this behavior? \n\nYou can set  a reminder for this habit to receive push notifications at the perfect time.",
    "Are you waiting until you feel a certain way before you do this task? \n\nRemind yourself that although mood influences behavior,  behavior also influences mood, so try braving the first step.",
    "Remember, there’s always an explanation for why you might be falling behind on a habit; it’s a matter of deconstructing it like you have here to reveal specifically why you're holding yourself back and then develop a solution."
  ];

  RxInt currentMessageIndex = 0.obs;
  var isVisible = true.obs;

  String get currentMessage => messages[currentMessageIndex.value];

  void nextMessage() {
    if (currentMessageIndex.value < messages.length - 1) {
      currentMessageIndex.value++;
    } else {
      isVisible.value = false;
    }
  }

  void previousMessage() {
    if (currentMessageIndex.value > 0) {
      currentMessageIndex.value--;
    }
  }

}