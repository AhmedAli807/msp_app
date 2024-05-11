import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:msp_app/msp/presentation/widgets/customization/bottom_sheet_customization.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class FOnboardingViewBody extends StatefulWidget {
  const FOnboardingViewBody({super.key});

  @override
  State<FOnboardingViewBody> createState() => _FOnboardingViewBodyState();
}

class _FOnboardingViewBodyState extends State<FOnboardingViewBody> {
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
                  AssetsData.samsung,
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
