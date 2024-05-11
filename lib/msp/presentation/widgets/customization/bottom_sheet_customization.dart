import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/widgets/customization/button_customization.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomSheetCustomization extends StatefulWidget {
  const BottomSheetCustomization({
    super.key,
    required this.fText,
    required this.sText,
    required this.description,
    required this.controller,
  });
  final String fText;
  final String sText;
  final String description;
  final PageController controller;

  @override
  State<BottomSheetCustomization> createState() =>
      _BottomSheetCustomizationState();
}

class _BottomSheetCustomizationState extends State<BottomSheetCustomization> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: ScreenSize.height(context) * 0.02,
            ),
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: widget.fText,
                        style: const TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: widget.sText,
                        style: TextStyle(
                          color: ColorAssets.mainColor,
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                Text(
                  widget.description,
                  style: FontAsset.medium14.copyWith(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: ScreenSize.height(context) * 0.03,
            ),
            SmoothPageIndicator(
              controller: widget.controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: const Color(0xff7B1D80),
                  dotColor: const Color(0xff7B1D80).withOpacity(0.5),
                  dotHeight: ScreenSize.height(context) * 0.02,
                  dotWidth: ScreenSize.width(context) * 0.03),
            ),
          ],
        ),
      ),
    );
  }
}
