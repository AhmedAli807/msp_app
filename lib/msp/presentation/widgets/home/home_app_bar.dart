import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {},
            child: SizedBox(
              height: ScreenSize.height(context) * 0.08,
              width: ScreenSize.width(context) * 0.12,
              child: Image.asset(
                AssetsData.mspIcon,
                fit: BoxFit.fill,
              ),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Hello to ',
                    style: TextStyle(
                      color: Color(0xFF030303),
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'MSP AI-Azhar 👋',
                    style: TextStyle(
                      color: ColorAssets.mainColor,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize.height(context) * 0.005,
            ),
            Text(
              'Best Student Digital Education Agency ',
              style: FontAsset.medium12.copyWith(color: Colors.grey),
              textAlign: TextAlign.left,
            )
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
              height: ScreenSize.height(context) * 0.06,
              width: ScreenSize.width(context) * 0.1,
              decoration: BoxDecoration(
                color: ColorAssets.mainColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AssetsData.joinUs,
                  fit: BoxFit.contain,
                ),
              )),
        )
      ],
    );
  }
}
