import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/screen_size.dart';
import 'splash_logo.dart';

class SplashScreenViewBody extends StatefulWidget {
  const SplashScreenViewBody({super.key});

  @override
  State<SplashScreenViewBody> createState() => _SplashScreenViewBodyState();
}

class _SplashScreenViewBodyState extends State<SplashScreenViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              height: ScreenSize.height(context),
              width: ScreenSize.width(context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetsData.background),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SplashLogo(),
                  SizedBox(
                    height: ScreenSize.height(context) * 0.2,
                  ),
                  CircularProgressIndicator(
                    color: ColorAssets.mainColor,
                    strokeWidth: 7,
                  )
                ],
              ))),
    );
  }
}
