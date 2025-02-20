import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';

class KnowledgeController extends GetxController {
  var courses = [
    {
      "title": "INTRODUCTORY\nCOURSE",
      "detail": "Theory  • 1 lesson  •  4m",
      "bgImg": kDesignIcon,
    },
    {
      "title": "Living Well",
      "subtitle": "The power of lifestyle health with\nHealink",
      "image": kDesignIcon,
      "detail": "4m",
    }
  ].obs;

  var categories = [
    {
      "title": "Sleep",
      "description":
          "Support sleep to enhance the body's damage repair processes and help prevent disease.",
      "image": kCategory1,
      "color": kBlueShadeColor
    },
    {
      "title": "Stimulation",
      "description":
          "Keep your brain sharp by challenging your cognitive functions in new ways lifelong.",
      "image": kCategory2,
      "color": kBlueShade1Color
    },
    {
      "title": "Nutrition",
      "description":
          "Nourish your body the way we have evolved to with a natural diet and eating pattern.",
      "image": kCategory3,
      "color": kGreenShade1Color
    },
    {
      "title": "Resilience",
      "description":
          "Learn to cope with, adapt to, and recover from adversity and stress effectively.",
      "image": kCategory4,
      "color": kOrangeShade1Color
    },
    {
      "title": "Exercise",
      "description":
          "Activities that enhance physical, cognitive, and mental performance and slow aging.",
      "image": kCategory5,
      "color": kRedShadeColor
    },
  ].obs;
}
