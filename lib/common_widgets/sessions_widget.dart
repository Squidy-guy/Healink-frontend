import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildSessionsList({
  required List<Map<String, dynamic>> sessions,
  required Color color,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: getWidth(22)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...sessions.map((session) => Padding(
              padding: EdgeInsets.only(bottom: getHeight(17.5)),
              child: Row(
                children: [
                  Container(
                    height: getHeight(72),
                    width: getWidth(80),
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Image.asset(session["image"],
                          height: getHeight(65), width: getWidth(72)),
                    ),
                  ),
                  SizedBox(width: getWidth(18)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getWidth(220),
                        child: Text(session["title"],
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 16.sp, fontWeight: FontWeight.w700)),
                      ),
                      SizedBox(height: getHeight(8)),
                      Row(
                        children: [
                          Image.asset(kAudioIcon,
                              height: getHeight(12), width: getWidth(12)),
                          SizedBox(width: getWidth(15)),
                          Text("Sessions coming soon",
                              style: AppStyles.blackTextStyle().copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}
