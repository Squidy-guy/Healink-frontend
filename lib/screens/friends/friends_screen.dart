import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/screens/friends/controller/friends_controller.dart';
import 'package:healink_app/screens/friends/friends_profile_screen.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FriendsScreen extends StatelessWidget {
  final FriendsController controller = Get.find();

  FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(75)),
            CustomAppBar(title: "Friends"),
            SizedBox(height: getHeight(22)),
            _buildTabBar(),
            SizedBox(height: getHeight(22)),
            Obx(() => _buildContent(controller.selectedTab.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Obx(() {
      return Container(
        height: getHeight(44),
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(12), vertical: getHeight(8)),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(47), color: kGreyShade14Color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["Requests", "My friends", "Add"].map((tab) {
            bool isSelected = controller.selectedTab.value == tab;
            return GestureDetector(
              onTap: () => controller.changeTab(tab),
              child: Container(
                width: getWidth(97),
                padding: EdgeInsets.symmetric(vertical: getHeight(3)),
                decoration: BoxDecoration(
                  color: isSelected ? kWhiteColor : kGreyShade14Color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    tab,
                    style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      );
    });
  }

  Widget _buildContent(String tab) {
    if (tab == "Requests") {
      return _buildFriendRequests();
    } else if (tab == "My friends") {
      return _buildMyFriends();
    } else {
      return _buildAddFriends();
    }
  }

  Widget _buildFriendRequests() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friend requests",
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: getHeight(145)),
        _buildShareInvite(),
      ],
    );
  }

  Widget _buildMyFriends() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Friends (${controller.friendsList.length})",
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Obx(() {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: getHeight(24)),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.friendsList.length,
            itemBuilder: (context, index) {
              var friend = controller.friendsList[index];
              return Padding(
                padding: EdgeInsets.only(bottom: getHeight(12)),
                child: InkWell(
                  onTap: () {
                    Get.to(() => FriendProfileScreen(friend: friend));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: getWidth(22),
                        backgroundImage: AssetImage(
                          friend["image"]!,
                        ),
                      ),
                      SizedBox(width: getWidth(12)),
                      Text(
                        friend["name"]!,
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == "Remove") {
                            controller.removeFriend(index);
                          }
                        },
                        icon: Icon(Icons.more_horiz, color: kBlackTextColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        elevation: 0,
                        color: kGreyShade14Color,
                        itemBuilder: (context) => [
                          PopupMenuItem<String>(
                            value: "Remove",
                            child: Center(
                              child: Text(
                                "Remove",
                                style: AppStyles.blackTextStyle().copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ],
    );
  }

  Widget _buildAddFriends() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search",
          style: AppStyles.blackTextStyle().copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: getHeight(12)),
        Container(
          height: getHeight(40),
          padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(23),
            border: Border.all(color: kBlackTextColor),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: kGreyColor,
                size: 18.sp,
              ),
              SizedBox(width: getWidth(10)),
              Expanded(
                child: TextField(
                  style: AppStyles.blackTextStyle().copyWith(
                    fontSize: 15.sp,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search friend",
                    contentPadding: EdgeInsets.only(bottom: getHeight(16)),
                    border: InputBorder.none,
                    hintStyle: AppStyles.blackTextStyle().copyWith(
                      fontSize: 14.sp,
                      color: kGreyColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: getHeight(87)),
        _buildShareInvite(),
      ],
    );
  }

  Widget _buildShareInvite() {
    return Center(
      child: Column(
        children: [
          Text(
            "Share Healink\nwith a friend",
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: getHeight(24)),
          Obx(() {
            return GestureDetector(
              onTap: () => controller.toggleCopied(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: getHeight(14)),
                width: getWidth(224),
                decoration: BoxDecoration(
                  color: kGreenShadeColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      controller.isCopied.value ? "Copied" : "Copy Link",
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: getWidth(10)),
                    Icon(Icons.copy, color: kBlackTextColor, size: 16),
                  ],
                ),
              ),
            );
          }),
          SizedBox(height: getHeight(24)),
          TextButton(
            onPressed: () => Get.back(),
            child: Text("Done",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
