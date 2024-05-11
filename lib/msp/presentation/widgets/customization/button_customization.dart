import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class ButtonCustomization extends StatelessWidget {
  ButtonCustomization(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.style,
      required this.backgroundColor,
      required this.borderCircular,
      required this.borderColor,
      required this.borderSideWidth,
      this.disabledBackgroundColor,
      required this.buttonHeight,
      required this.buttonWidth});
  final void Function() onPressed;
  final String text;
  final TextStyle style;
  final Color backgroundColor;
  final Color borderColor;
  Color? disabledBackgroundColor;
  final double borderCircular;
  final double borderSideWidth;
  final double buttonHeight;
  final double buttonWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height(context) * buttonHeight,
      width: ScreenSize.width(context) * buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderCircular), // <-- Radius
            ),
            disabledBackgroundColor: disabledBackgroundColor,
            backgroundColor: backgroundColor,
            side: BorderSide(color: borderColor, width: borderSideWidth)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
