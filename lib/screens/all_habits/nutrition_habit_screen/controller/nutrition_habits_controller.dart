import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NutritionHabitController extends GetxController {
  var firstHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Inflammation","type" : "unhealthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Antioxidant activity","type" : "healthy"},
    {"issue" : "Telomere length","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Oxidative damage","type" : "unhealthy"},
  ].obs;


  var secondHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Inflammation","type" : "unhealthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Antioxidant activity","type" : "healthy"},
    {"issue" : "Telomere length","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Oxidative damage","type" : "unhealthy"},
  ].obs;

  var thirdHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Inflammation","type" : "unhealthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Antioxidant activity","type" : "healthy"},
    {"issue" : "Telomere length","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Oxidative damage","type" : "unhealthy"},
  ].obs;

  var fourthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood+","type" : "healthy"},
    {"issue" : "Cognitive function","type" : "healthy"},
    {"issue" : "Cortisol","type" : "unhealthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Sleep quality","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Oxidative damage","type" : "unhealthy"},  ].obs;

  var fifthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Sleep quality","type" : "healthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
  ].obs;

  var sixthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Fat utilization+","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Insulin sensitivity","type" : "healthy"},
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Blood glucose","type" : "unhealthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Autophagy","type" : "healthy"},
    {"issue" : "Glucose tolerance","type" : "healthy"},
    {"issue" : "Insulin resistance","type" : "unhealthy"},
  ].obs;

  var seventhHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Cognitive function","type" : "healthy"},
    {"issue" : "Digestion","type" : "healthy"},
    {"issue" : "Homeostatic maintenance","type" : "healthy"},
    {"issue" : "Emotional regulation","type" : "healthy"},
    {"issue" : "Physical performance","type" : "healthy"},
    {"issue" : "Renal function","type" : "healthy"},
    {"issue" : "Skin hydration","type" : "healthy"},
    {"issue" : "Gastrointestinal function","type" : "healthy"},
    {"issue" : "Insulin resistance","type" : "unhealthy"},

  ].obs;



  var scrollController = ScrollController();

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