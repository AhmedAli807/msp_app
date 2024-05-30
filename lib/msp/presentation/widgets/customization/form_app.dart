import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/font_asset.dart';

class FormApp extends StatelessWidget {
  FormApp(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.suffixIcon,
      this.prefixIcon,
      this.validator,
      this.textInputType,
      this.onSaved,
      required this.obscureText,
      this.borderSideColor,
      required this.fontColor,
      required this.fillcolor,
      required this.topLeftBorderRadius,
      required this.topRightBorderRadius,
      required this.bottomLeftBorderRadius,
      required this.bottomRightBorderRadius})
      : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final dynamic suffixIcon;
  final dynamic prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final void Function(String?)? onSaved;
  final bool obscureText;
  Color? borderSideColor;
  final double topLeftBorderRadius;
  final double topRightBorderRadius;
  final double bottomLeftBorderRadius;
  final double bottomRightBorderRadius;
  final Color fontColor;
  final Color fillcolor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: FontAsset.medium14,
        obscureText: obscureText,
        onSaved: onSaved,
        keyboardType: textInputType,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          focusColor: fillcolor,
          hintText: hintText,
          hintStyle: TextStyle(color: fontColor),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          filled: true,
          fillColor: fillcolor,
          focusedBorder: buildOutlineInputBorder(
              topLeftRadius: topLeftBorderRadius,
              topRightRadius: topRightBorderRadius,
              bottomLeftRadius: bottomLeftBorderRadius,
              bottomRightRadius: bottomRightBorderRadius),
          enabledBorder: buildOutlineInputBorder(
              topLeftRadius: topLeftBorderRadius,
              topRightRadius: topRightBorderRadius,
              bottomLeftRadius: bottomLeftBorderRadius,
              bottomRightRadius: bottomRightBorderRadius),
        ));
  }

  OutlineInputBorder buildOutlineInputBorder(
      {required double topLeftRadius,
      required double topRightRadius,
      required double bottomLeftRadius,
      required double bottomRightRadius}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
            bottomRight: Radius.circular(bottomRightRadius)),
        borderSide: BorderSide(color: Colors.grey));
  }
}
