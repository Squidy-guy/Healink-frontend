import 'package:get/get.dart';

class ReportController extends GetxController {
  var diseaseList = <Map<String, dynamic>>[
    {"name": "Heart disease", "detail" : "Heart disease is the leading cause of death in humans. Plaques build up in arteries which narrow or block blood vessels. This can damage vessels and the heart and lead to a heart attack, chest pain, or stroke." },
    {"name": "Dementia", "detail" : "Lack of adequate stimulation and poor lifestyle increases dementia risk. In high risk individuals, cognitive abilities may decline more rapidly and lead to earlier and more rapid dementia development." },
    {"name": "Cancer", "detail" : "Cancer is most often due to poor lifestyle causing cell damage and mutated cell functioning. Cancer kills by growing into key organs, nerves, or blood vessels and interfering with and impairing their function." },
    {"name": "Distress", "detail" : "Distress is extreme anxiety, sorrow, or pain and is experienced when a person feels helpless and unable to do anything that could resolve the stress or prevent a bad outcome." },
    {"name": "Metabolic Syndrome", "detail" : "Poor lifestyle may lead to excess weight gain and metabolic syndrome - a group of conditions that occur together increasing one's risk of heart disease, stroke and type 2 diabetes. These conditions include increased blood pressure, high blood sugar, excess body fat around the waist, and abnormal cholesterol or triglyceride levels." },
  ].obs;
  var selectedFilter = "Disease/morbidity".obs;

  void updateFilter(String newFilter) {
    selectedFilter.value = newFilter;
  }

  final List<Map<String, String>> articles = [
    {"title": "Heart Disease", "category": "Disease/morbidity"},
    {"title": "Dementia", "category": "Disease/morbidity"},
    {"title": "Cancer", "category": "Disease/morbidity"},
    {"title": "Distress", "category": "Disease/morbidity"},
    {"title": "Metabolic Syndrome", "category": "Disease/morbidity"},
    {"title": "Cholesterol", "category": "Biomarker"},
    {"title": "Triglycerides", "category": "Biomarker"},
    {"title": "Fasting Blood Glucose", "category": "Biomarker"},
    {"title": "High-sensitivity C-reactive protein", "category": "Biomarker"},
    {"title": "Blood pressure", "category": "Biomarker"},
    {"title": "Waist-to-hip ratio", "category": "Biomarker"},
    {"title": "VO2 max", "category": "Biomarker"},
     {"title": "Grip Strength", "category": "Biomarker"},
      {"title": "Cortisol: DHEA-S ratio", "category": "Biomarker"},
       {"title": "Plasma BDNF", "category": "Biomarker"},
        {"title": "PBMC Telomere length (20th%)", "category": "Biomarker"},
         {"title": "NAD+", "category": "Biomarker"},
          {"title": "Dunedin PACE epigenetic clock", "category": "Biomarker"},
          {"title": "ctDNA", "category": "Biomarker"},
          {"title": "P-tau181 & GFAP", "category": "Biomarker"},

  ];

  List<Map<String, String>> get filteredArticles {

      return articles.where((article) => article["category"] == selectedFilter.value).toList();

  }


}