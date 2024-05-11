import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class TOnboardingViewBody extends StatefulWidget {
  const TOnboardingViewBody({super.key});

  @override
  State<TOnboardingViewBody> createState() => _TOnboardingViewBodyState();
}

class _TOnboardingViewBodyState extends State<TOnboardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: FontAsset.medium14.copyWith(
                        color: ColorAssets.mainColor,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenSize.height(context) * 0.02,
              ),
              Center(
                  child: SizedBox(
                height: ScreenSize.height(context) * 0.5,
                width: ScreenSize.width(context) * 0.6,
                child: Image.asset(
                  AssetsData.ourCommittes,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
