import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/widgets/customization/form_app.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class SearchBarHome extends StatefulWidget {
  const SearchBarHome({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  State<SearchBarHome> createState() => _SearchBarHomeState();
}

class _SearchBarHomeState extends State<SearchBarHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: ScreenSize.width(context) * 0.83,
          child: FormApp(
            hintText: 'Search a title..',
            controller: widget.searchController,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            obscureText: false,
            fontColor: ColorAssets.hintColor,
            fillcolor: Colors.white,
            topLeftBorderRadius: 8,
            topRightBorderRadius: 0,
            bottomLeftBorderRadius: 8,
            bottomRightBorderRadius: 0,
          ),
        ),
        Container(
            height: ScreenSize.height(context) * 0.07,
            width: ScreenSize.width(context) * 0.09,
            decoration: BoxDecoration(
                color: ColorAssets.mainColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
