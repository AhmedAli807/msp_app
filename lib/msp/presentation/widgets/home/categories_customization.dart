import 'package:flutter/material.dart';
import 'package:msp_app/utils/constants/font_asset.dart';

class CategoryCustomization extends StatelessWidget {
  const CategoryCustomization(
      {super.key,
      required this.height,
      required this.width,
      required this.topLeftRadius,
      required this.topRightRadius,
      required this.bottomLeftRadius,
      required this.bottomRightRadius,
      required this.title,
      required this.image,
      required this.onTap});
  final double height;
  final double width;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final String title;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
            bottomRight: Radius.circular(bottomRightRadius),
          ),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                const Color(0x991E2043).withOpacity(0.4), BlendMode.darken),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: FontAsset.semiBold14
                .copyWith(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
