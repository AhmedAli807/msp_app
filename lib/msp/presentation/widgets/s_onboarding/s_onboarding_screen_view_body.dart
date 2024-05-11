import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class SOnboardindViewBody extends StatefulWidget {
  const SOnboardindViewBody({super.key});

  @override
  State<SOnboardindViewBody> createState() => _SOnboardindViewBodyState();
}

class _SOnboardindViewBodyState extends State<SOnboardindViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
                height: ScreenSize.height(context) * 0.8,
                width: ScreenSize.width(context) * 0.6,
                child: Image.asset(
                  AssetsData.ourTeam,
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