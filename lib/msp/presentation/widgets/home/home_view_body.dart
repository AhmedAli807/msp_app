import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msp_app/msp/presentation/widgets/home/categories.dart';
import 'package:msp_app/msp/presentation/widgets/home/our_blog_list.dart';
import 'package:msp_app/msp/presentation/widgets/home/our_team_list.dart';
import 'package:msp_app/msp/presentation/widgets/home/search_bar.dart';
import 'package:msp_app/utils/constants/assets_data.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';
import 'home_app_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const HomeAppBar(),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                SearchBarHome(searchController: searchController),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                const Categories(),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Our Team',
                      style: FontAsset.medium16,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: FontAsset.medium16.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: ColorAssets.mainColor,
                            color: ColorAssets.mainColor),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                SizedBox(
                  height: ScreenSize.height(context) * 0.3,
                  child: const OurTeamList(),
                ),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Our Blog',
                      style: FontAsset.medium16,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: FontAsset.medium16.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: ColorAssets.mainColor,
                            color: ColorAssets.mainColor),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenSize.height(context) * 0.02,
                ),
                SizedBox(
                  height: ScreenSize.height(context) * 0.3,
                  child: const OurBlogList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
