import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FriendProfileScreen extends StatelessWidget {
  final Map<String, dynamic> friend;

  FriendProfileScreen({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: getHeight(215),
                width: double.infinity,
              ),
              Container(
                height: getHeight(153),
                width: double.infinity,
                color: kBlackTextColor,
              ),
              Positioned(
                bottom: 0,
                left: getHeight(134),
                right: getHeight(134),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: kBlackTextColor,
                        width: 3,
                      ),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(friend["image"]!),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getHeight(25)),
              Text(
                friend["name"]!,
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: getHeight(16)),
              Text(
                "Joined January, 2025",
                style: AppStyles.blackTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getHeight(23)),
              _buildRemoveButton(),
            ],
          ),
          SizedBox(height: getHeight(47)),
          _buildStatsSection(),
          Spacer(),
          _buildBackButton(),
          SizedBox(height: getHeight(30)),
        ],
      ),
    );
  }

  Widget _buildRemoveButton() {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: getHeight(10)),
        width: getWidth(345),
        decoration: BoxDecoration(
          color: kGreyShade15Color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            "Remove",
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatsSection() {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getHeight(9), horizontal: getWidth(24)),
      color: kBlackTextColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatItem("Cheers given", "3"),
              SizedBox(
                height: getHeight(35),
                child: VerticalDivider(color: kWhiteColor, thickness: 2),
              ),
              _buildStatItem("Routine habits", "3"),
              SizedBox(
                height: getHeight(35),
                child: VerticalDivider(color: kWhiteColor, thickness: 2),
              ),
              _buildStatItem("Friends", "3"),
            ],
          ),
          SizedBox(height: getHeight(16)),
          Text(
            "Longest habit streak",
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 16.sp,
              color: kWhiteColor,
            ),
          ),
          SizedBox(height: getHeight(2)),
          Text(
            "3",
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: kWhiteColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 16.sp,
            color: kWhiteColor,
          ),
        ),
        SizedBox(height: getHeight(2)),
        Text(
          value,
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: kWhiteColor,
          ),
        ),
      ],
    );
  }

  Widget _buildBackButton() {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: getHeight(10)),
        width: getWidth(345),
        decoration: BoxDecoration(
          color: kGreyShade15Color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            "Back",
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
