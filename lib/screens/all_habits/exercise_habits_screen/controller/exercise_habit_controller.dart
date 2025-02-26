import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ExerciseHabitController extends GetxController {
  var firstHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Dopamine baseline","type" : "healthy"},
    {"issue" : "Serotonin","type" : "healthy"},
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Cognitive function","type" : "healthy"},
    {"issue" : "Blood flow","type" : "healthy"},
    {"issue" : "Cortisol","type" : "unhealthy"},
    {"issue" : "BDNF","type" : "healthy"},
    {"issue" : "Processing speed","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Cardiopulmonary fitness","type" : "healthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Cholesterol","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},

  ].obs;

  var secondHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Dopamine baseline","type" : "healthy"},
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "Inhibitory-control","type" : "healthy"},
    {"issue" : "Physical recovery","type" : "healthy"},
    {"issue" : "Fat utilization","type" : "healthy"},
    {"issue" : "Cognitive function","type" : "healthy"},
    {"issue" : "Insulin sensitivity","type" : "healthy"},
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Cortisol","type" : "unhealthy"},
    {"issue" : "Serotonin","type" : "healthy"},
    {"issue" : "Processing speed","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "BDNF","type" : "healthy"},
    {"issue" : "Cardiopulmonary fitness","type" : "healthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
    {"issue" : "Cholesterol","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
    {"issue" : "Sleep quality","type" : "healthy"},
    {"issue" : "Physical performance","type" : "healthy"},
    {"issue" : "Sleep duration","type" : "healthy"},

  ].obs;

  var fourthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "Cortisol","type" : "unhealthy"},
    {"issue" : "Serotonin","type" : "healthy"},
    {"issue" : "NAD+","type" : "healthy"},
    {"issue" : "Testosterone","type" : "healthy"},
    {"issue" : "Endorphins","type" : "healthy"},
    {"issue" : "Grip strength","type" : "healthy"},
    {"issue" : "Frailty risk","type" : "unhealthy"},
    {"issue" : "Muscle mass","type" : "healthy"},
    {"issue" : "Posture","type" : "healthy"},
    {"issue" : "Confidence","type" : "healthy"},
    {"issue" : "Physical performance","type" : "healthy"},
    {"issue" : "Sleep duration","type" : "healthy"},
  ].obs;

  var thirdHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Blood flow","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Cognitive function","type" : "healthy"},
    {"issue" : "Life expectancy","type" : "healthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Blood clot risk","type" : "unhealthy"},
    {"issue" : "Blood glucose","type" : "unhealthy"},
    {"issue" : "Heart disease risk","type" : "unhealthy"},
  ].obs;

  var fifthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "Blood flow","type" : "healthy"},
    {"issue" : "Flexibility","type" : "healthy"},
    {"issue" : "Range of motion","type" : "healthy"},
    {"issue" : "Athletic performance","type" : "healthy"},
    {"issue" : "Energy","type" : "healthy"},
    {"issue" : "Posture","type" : "healthy"},
    {"issue" : "Confidence","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Injury risk","type" : "unhealthy"},
    {"issue" : "Pain","type" : "unhealthy"},
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