import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String hintText;
  final bool isObscure;
  final double height;
  final double width;
  final Color borderColor;
  final Color fillColor;
  final Color hintColor;
  final bool isStyle;
  final TextInputType textInputType;
  final Widget Function(bool isFocused)? suffixBuilder;
  final bool readOnly;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? suffixText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final double borderRadius;

  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    required this.hintText,
    this.isObscure = false,
    this.height = 50,
    this.width = double.infinity,
    this.borderColor = kWhiteColor,
    this.fillColor = kWhiteColor,
    this.hintColor = kGreyColor,
    this.isStyle = false,
    this.textInputType = TextInputType.text,
    this.suffixBuilder,
    this.readOnly = false,
    this.suffix,
    this.suffixText,
    this.prefix,
    this.onChanged,
    this.onTap,
    this.maxLines = 1,
    this.inputFormatters,
    this.borderRadius = 24,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode?.addListener(() {
      setState(() {
        isFocused = widget.focusNode!.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(widget.height),
      width: getWidth(widget.width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        boxShadow: [
          BoxShadow(
            color: kGreyShade1Color.withOpacity(0.3),
            offset: const Offset(2, 4),
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.textInputType,
        focusNode: widget.focusNode,
        obscureText: widget.isObscure,
        readOnly: widget.readOnly,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        onTap: widget.onTap,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppStyles.greyTextStyle().copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: widget.hintColor,
          ),
          filled: true,
          fillColor: widget.fillColor,
          suffixIcon: widget.suffixBuilder != null
              ? Padding(
                  padding: const EdgeInsets.all(12),
                  child: widget.suffixBuilder!(isFocused),
                )
              : null,
          contentPadding: EdgeInsets.only(left: getWidth(18)),
          prefixIcon: widget.prefix,
          suffix: widget.suffixText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              widget.borderRadius,
            ),
            borderSide: BorderSide(
              color: widget.borderColor,
              width: 0.1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.borderColor,
              width: 0.1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              widget.borderRadius,
            ),
            borderSide: BorderSide(
              color: widget.borderColor,
              width: 0.1,
            ),
          ),
        ),
        style: AppStyles.darkGreyTextStyle()
            .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
