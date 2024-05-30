import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class Line extends StatelessWidget {
  const Line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width(context),
      height: ScreenSize.height(context) * 0.002,
      decoration: const ShapeDecoration(
        color: Color(0xFF92929D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(2),
            bottomRight: Radius.circular(2),
          ),
        ),
      ),
    );
  }
}
