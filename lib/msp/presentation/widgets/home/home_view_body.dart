import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/widgets/home/categories.dart';
import 'package:msp_app/msp/presentation/widgets/home/search_bar.dart';
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
                const Categories()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
