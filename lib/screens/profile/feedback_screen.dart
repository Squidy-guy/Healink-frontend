import 'package:flutter/material.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(75)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
              child: CustomAppBar(title: "Feedback"),
            ),
            SizedBox(height: getHeight(28)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
              child: Text(
                "We’d love to hear your suggestions!",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: getHeight(24)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
              child: Text(
                "How would you rate your experience using Healink?",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: getHeight(5)),
            _buildStarRating(4),
            SizedBox(height: getHeight(24)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
              child: Text(
                "Does Healink help you make lifestyle changes easier?",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: getHeight(5)),
            _buildStarRating(3),
            SizedBox(height: getHeight(24)),
            _buildFeedbackField("What part of Healink is most useful to you?"),
            _buildFeedbackField("How could we improve our product?"),
            _buildFeedbackField(
                "What other features would you like to see on Healink?"),
            _buildFeedbackField("Describe yourself in a few words"),
            _buildFeedbackField(
                "(Optional) Please provide your email if you are open to Healink contacting you about your feedback"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
              child: CustomButton(
                height: 48,
                width: double.infinity,
                title: "Send Feedback",
                onTap: () {},
              ),
            ),
            SizedBox(height: getHeight(32)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getHeight(10), horizontal: getWidth(22)),
              decoration: BoxDecoration(color: kGreyShade7Color),
              child: Text(
                "By using this screen and submitting feedback, suggestions or other content, you acknowledge and agree that Healink, at its sole discretion, may use, adapt, distribute, and share your feedback in any media, including for product improvement, research, marketing, or other related purposes.",
                textAlign: TextAlign.left,
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStarRating(int rating) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Row(
        children: List.generate(5, (index) {
          return Icon(
            index < rating ? Icons.star : Icons.star_border,
            color: kPrimaryColor,
            size: 24.sp,
          );
        }),
      ),
    );
  }

  Widget _buildFeedbackField(String label) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppStyles.blackTextStyle()
                .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: getHeight(8)),
          CustomTextField(
            height: 79,
            maxLines: 3,
            hintText: "Type here...",
            borderRadius: 11,
            borderColor: kPrimaryColor,
            fillColor: kWhiteColor,
            controller: TextEditingController(),
            showShadow: false,
            topPadding: getHeight(7),
          ),
          SizedBox(height: getHeight(24)),
        ],
      ),
    );
  }
}
