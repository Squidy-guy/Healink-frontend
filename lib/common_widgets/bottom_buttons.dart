import 'package:flutter/material.dart';
import 'package:healink_app/common_widgets/add_and_edit_dialog.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';

class BottomButtons extends StatelessWidget {
  final String title;
  const BottomButtons({super.key, this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            height: 48,
            width: 168,
            title: "Add",
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AddDataDialog(
                        title: title,
                      ));
            },
          ),
          CustomButton(
            height: 48,
            width: 168,
            title: "Edit",
            textColor: kPrimaryColor,
            color: kWhiteColor,
            borderColor: kPrimaryColor,
            showShadow: false,
            onTap: () {
              showDialog(
                  context: context, builder: (context) => EditDataDialog());
            },
          ),
        ],
      ),
    );
  }
}
