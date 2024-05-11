import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

import '../../../../utils/constants/assets_data.dart';
import '../../../../utils/constants/color_assets.dart';
import '../../../../utils/constants/screen_size.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RippleAnimation(
        child: Container(
            height: ScreenSize.height(context) * 0.37,
            decoration: BoxDecoration(
                color: ColorAssets.mainColor, shape: BoxShape.circle),
            child: Image.asset(AssetsData.logo)),
        color: ColorAssets.mainColor,
        delay: const Duration(milliseconds: 300),
        repeat: true,
        minRadius: 100,
        ripplesCount: 6,
        duration: const Duration(milliseconds: 6 * 300),
      ),
    );
  }
}
