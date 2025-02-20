import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';

void showTutorialBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => const TutorialBottomSheet(),
  );
}

class TutorialBottomSheet extends StatefulWidget {
  const TutorialBottomSheet({Key? key}) : super(key: key);

  @override
  _TutorialBottomSheetState createState() => _TutorialBottomSheetState();
}

class _TutorialBottomSheetState extends State<TutorialBottomSheet> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<Map<String, dynamic>> tutorialSteps = [
    {
      "title": "Sort your habits into a routine",
      "description":
          "Start by setting a time for each habit. You can also set a reminder prompt.",
      "image": "assets/images/tutorial1.png",
    },
    {
      "title": "Tick-off habits that you complete each day",
      "description": "This contributes to your lifestyle score.",
      "image": "assets/images/tutorial2.png",
    },
    {
      "title": "Watch your lifestyle score improve",
      "description":
          "The more habits you do, and the more consistent you do them, the higher your score will be.",
      "image": "assets/images/tutorial3.png",
    },
    {
      "title": "Grab your crew",
      "description": "You can add your friends and motivate each other.",
      "image": "assets/images/tutorial4.png",
    },
    {
      "title": "We’ll help you at every step of the way",
      "description":
          "If you fall behind on one of your habits, we’ll help you remove hurdles and jump-start your habit again.",
      "image": "assets/images/tutorial5.png",
    },
  ];

  void _nextPage() {
    if (currentPage < tutorialSteps.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    } else {
      Navigator.pop(context);
    }
  }

  void _previousPage() {
    if (currentPage > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void _skipTutorial() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(670),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          children: [
            SizedBox(height: getHeight(30)),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: tutorialSteps.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Tutorial",
                            style: AppStyles.blackTextStyle().copyWith(
                                color: kPrimaryColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "${index + 1} / ${tutorialSteps.length}",
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 18.sp, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(10)),
                      Text(
                        tutorialSteps[index]["title"],
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: getHeight(8)),
                      Text(
                        tutorialSteps[index]["description"],
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: getHeight(20)),
                      Center(
                        child: Image.asset(
                          tutorialSteps[index]["image"],
                          height: getHeight(398),
                          width: getWidth(194),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentPage > 0
                    ? ElevatedButton(
                        onPressed: _previousPage,
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(getWidth(90), getHeight(48)),
                          backgroundColor: kGreyShade11Color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text("Back",
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 16.sp, fontWeight: FontWeight.w700)),
                      )
                    : SizedBox(width: getWidth(70)),
                TextButton(
                  onPressed: _skipTutorial,
                  child: Text("Skip",
                      style: AppStyles.primaryTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                ),
                ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: Size(getWidth(92), getHeight(48)),
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    currentPage == tutorialSteps.length - 1 ? "Done" : "Next",
                    style: AppStyles.whiteTextStyle()
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(15)),
          ],
        ),
      ),
    );
  }
}
