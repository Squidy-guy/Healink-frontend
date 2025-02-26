import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/custom_button.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';

class SleepHabitController extends GetxController {
  var scrollController = ScrollController();
  var firstHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Sleep duration","type" : "healthy"},
    {"issue" : "Sleep quality","type" : "healthy"},
    {"issue" : "Adenosine function","type" : "healthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
  ].obs;

  var secondHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Sleep quality","type" : "healthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
  ].obs;

  var thirdHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "BDNF","type" : "healthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Circadian rhythm","type" : "healthy"},
    {"issue" : "Cancer-fighting NKT cells","type" : "healthy"},
    {"issue" : "Learning & memory","type" : "healthy"},
  ].obs;

  var fourthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Circadian rhythm","type" : "healthy"},
  ].obs;

  var fifthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "Vitamin D","type" : "healthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Telomere shortening","type" : "unhealthy"},
    {"issue" : "Calcium absorption","type" : "healthy"},
    {"issue" : "Circadian rhythm","type" : "healthy"},
  ].obs;

  var sixthHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Sleep quality","type" : "healthy"},
    {"issue" : "Parasympathetic activity","type" : "healthy"},
    {"issue" : "Sleep onset","type" : "healthy"},
    {"issue" : "Sleep consistency","type" : "healthy"},
  ].obs;

  var seventhHabitUpsDowns = <Map<String, dynamic>>[
    {"issue" : "Mood","type" : "healthy"},
    {"issue" : "BDNF","type" : "healthy"},
    {"issue" : "Dementia risk","type" : "unhealthy"},
    {"issue" : "Cancer risk","type" : "unhealthy"},
    {"issue" : "Fatigue","type" : "unhealthy"},
    {"issue" : "Metabolic syndrome risk","type" : "unhealthy"},
    {"issue" : "Circadian rhythm","type" : "healthy"},
    {"issue" : "Cancer-fighting NKT cells","type" : "healthy"},
    {"issue" : "Learning & memory","type" : "healthy"},
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

  var selectedWeekdays = <String>[].obs;

  var selectedReminders = <int>[].obs;

  RxBool isReminderEnabled = true.obs;

  List<String> weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];

  List<int> reminderMinutes = [5, 10, 15, 20, 25, 30, 35];

  @override
  void onInit() {
    super.onInit();
    selectedWeekdays.assignAll(weekdays);
    selectedReminders.assignAll(reminderMinutes);
  }

  void toggleWeekday(String day) {
    selectedWeekdays.contains(day)
        ? selectedWeekdays.remove(day)
        : selectedWeekdays.add(day);
  }

  void toggleReminder(int minutes) {
    selectedReminders.contains(minutes)
        ? selectedReminders.remove(minutes)
        : selectedReminders.add(minutes);
  }

  void toggleReminderVisibility() {
    isReminderEnabled.value = !isReminderEnabled.value;
  }
}