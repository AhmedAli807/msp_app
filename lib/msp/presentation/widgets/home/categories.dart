import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/widgets/home/categories_customization.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CategoryCustomization(
                onTap: () {},
                height: ScreenSize.height(context) * 0.21,
                width: ScreenSize.width(context) * 0.3,
                topLeftRadius: 12,
                topRightRadius: 0,
                bottomLeftRadius: 0,
                bottomRightRadius: 0,
                title: 'Developers',
                image: AssetsData.developersCategory),
            SizedBox(
              height: ScreenSize.height(context) * 0.007,
            ),
            CategoryCustomization(
                onTap: () {},
                height: ScreenSize.height(context) * 0.1,
                width: ScreenSize.width(context) * 0.3,
                topLeftRadius: 0,
                topRightRadius: 0,
                bottomLeftRadius: 12,
                bottomRightRadius: 0,
                title: 'Logistics',
                image: AssetsData.logisticCategory)
          ],
        ),
        SizedBox(
          width: ScreenSize.width(context) * 0.007,
        ),
        Column(
          children: [
            Row(
              children: [
                CategoryCustomization(
                    onTap: () {},
                    height: ScreenSize.height(context) * 0.15,
                    width: ScreenSize.width(context) * 0.35,
                    topLeftRadius: 0,
                    topRightRadius: 0,
                    bottomLeftRadius: 0,
                    bottomRightRadius: 0,
                    title: 'Marketing',
                    image: AssetsData.marketingCategory),
                SizedBox(
                  width: ScreenSize.width(context) * 0.007,
                ),
                CategoryCustomization(
                    onTap: () {},
                    height: ScreenSize.height(context) * 0.15,
                    width: ScreenSize.width(context) * 0.25,
                    topLeftRadius: 0,
                    topRightRadius: 12,
                    bottomLeftRadius: 0,
                    bottomRightRadius: 0,
                    title: 'HR',
                    image: AssetsData.hrCategory),
              ],
            ),
            SizedBox(
              height: ScreenSize.height(context) * 0.007,
            ),
            Row(
              children: [
                CategoryCustomization(
                    onTap: () {},
                    height: ScreenSize.height(context) * 0.16,
                    width: ScreenSize.width(context) * 0.2,
                    topLeftRadius: 0,
                    topRightRadius: 0,
                    bottomLeftRadius: 0,
                    bottomRightRadius: 0,
                    title: 'PR',
                    image: AssetsData.prCategory),
                SizedBox(
                  width: ScreenSize.width(context) * 0.007,
                ),
                CategoryCustomization(
                    onTap: () {},
                    height: ScreenSize.height(context) * 0.16,
                    width: ScreenSize.width(context) * 0.399,
                    topLeftRadius: 0,
                    topRightRadius: 0,
                    bottomLeftRadius: 0,
                    bottomRightRadius: 12,
                    title: 'Others',
                    image: AssetsData.others),
                SizedBox(
                  width: ScreenSize.width(context) * 0.007,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
