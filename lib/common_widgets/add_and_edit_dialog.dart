import 'package:flutter/material.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditDataDialog extends StatefulWidget {
  const EditDataDialog({super.key});

  @override
  _EditDataDialogState createState() => _EditDataDialogState();
}

class _EditDataDialogState extends State<EditDataDialog> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Container(
        width: getWidth(343),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(22), vertical: getHeight(24)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Text(
                "Edit data for ",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
              Text(
                "Cholesterol ratio (total/HDL)",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(48)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DataField(
                      width: getWidth(60),
                      title: "Value",
                      leftPadding: 10,
                      controller: TextEditingController(text: "22.0")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Unit",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: kBlackTextColor,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: getHeight(12)),
                      CustomButton(
                        height: 40,
                        width: 55,
                        textColor: kPrimaryColor,
                        color: kWhiteColor,
                        borderColor: kPrimaryColor,
                        showShadow: false,
                        textSize: 13,
                        borderRadius: 5,
                        title: "Ratio",
                        onTap: () {},
                      ),
                    ],
                  ),
                  DataField(
                    width: getWidth(110),
                    title: "Test date",
                     leftPadding: 4,
                    controller: TextEditingController(
                        text: DateFormat('MM/dd/yyyy').format(selectedDate)),
                    readOnly: true,
                    onTap: () => _selectDate(context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delete",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: kBlackTextColor,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: getHeight(12)),
                      Container(
                        height: getHeight(40),
                        width: getWidth(55),
                        decoration: BoxDecoration(
                          color: kBlueShade8Color,
                            border: Border.all(color: kPrimaryColor),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Image.asset(kBin1Icon,height: getHeight(20),width: getWidth(20),)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getHeight(35)),
              CustomButton(
                  height: 48,
                  width: 104,
                  title: "Done",
                  onTap: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }
}

class AddDataDialog extends StatefulWidget {
  final String title;

  const AddDataDialog({super.key, required this.title});

  @override
  _AddDataDialogState createState() => _AddDataDialogState();
}

class _AddDataDialogState extends State<AddDataDialog> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Container(
        width: getWidth(343),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(22), vertical: getHeight(24)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Input new data",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: kBlackTextColor),
              ),
              SizedBox(height: getHeight(8)),
              Text(
                "What was the result of your Cholesterol ratio (total/HDL) test?",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: kBlackTextColor),
              ),
              SizedBox(height: getHeight(22)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DataField(
                      width: getWidth(212),
                      title: "Cholesterol ratio (total/HDL)",
                      controller: TextEditingController()),
                  Column(
                    children: [
                      Text("Unit",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: kBlackTextColor,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: getHeight(12)),
                      CustomButton(
                        height: 40,
                        width: 81,
                        textColor: kPrimaryColor,
                        color: kWhiteColor,
                        borderColor: kPrimaryColor,
                        showShadow: false,
                        textSize: 13,
                        borderRadius: 5,
                        title: "Ratio",
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getHeight(22)),
              DataField(
                title: "When did you do this test?",
                controller: TextEditingController(
                    text: DateFormat('MM/dd/yyyy').format(selectedDate)),
                readOnly: true,
                onTap: () => _selectDate(context),
              ),
              SizedBox(height: getHeight(36)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      height: 48,
                      width: 101,
                      textColor: kPrimaryColor,
                      color: kWhiteColor,
                      borderColor: kPrimaryColor,
                      showShadow: false,
                      title: "Back",
                      onTap: () => Navigator.pop(context)),
                  CustomButton(
                      height: 48,
                      width: 101,
                      title: "Save",
                      onTap: () {
                        _showSuccessDialog(context);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool readOnly;
  final double width;
   final double leftPadding;
  final Function()? onTap;
  const DataField(
      {required this.title,
      required this.controller,
      this.readOnly = false,
      this.width = double.infinity,
      this.leftPadding = 18,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 14.sp,
                color: kBlackTextColor,
                fontWeight: FontWeight.w700)),
        SizedBox(height: getHeight(12)),
        CustomTextField(
          height: 40,
          width: width,
          borderRadius: 5,
          borderColor: kPrimaryColor,
          showShadow: false,
          hintColor: kPrimaryColor,
          fillColor: kBlueShade8Color,
          leftPadding: leftPadding,
          controller: controller,
          readOnly: readOnly,
          hintText: "",
          textColor: kPrimaryColor,
          onTap: onTap,
        ),
      ],
    );
  }
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: kWhiteColor,
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Container(
          width: getWidth(343),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(22), vertical: getHeight(24)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "All Done!",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: kBlackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: getHeight(16)),
                Image.asset(kDone,
                    height: getHeight(113), width: getWidth(113)),
                SizedBox(height: getHeight(14)),
                Text(
                  "Regular health testing is key to identifying potential hazards that may arise over time.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: getHeight(14)),
                Text(
                  "We’ll let you know when this data expires after 3 months by flagging it with 'need data' to remind you to retest this biomarker.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp, color: kBlackTextColor),
                ),
                SizedBox(height: getHeight(14)),
                CustomButton(
                    height: 48,
                    width: 269,
                    title: "Done",
                    onTap: () => Navigator.pop(context)),
              ],
            ),
          ),
        ),
      );
    },
  );
}
