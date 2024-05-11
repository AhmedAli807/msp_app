import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/pages/f_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/s_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/splash_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/t_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/widgets/customization/bottom_sheet_customization.dart';
import 'package:msp_app/msp/presentation/widgets/customization/button_customization.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';

class MainOnboardingViewBody extends StatefulWidget {
  const MainOnboardingViewBody({super.key});

  @override
  State<MainOnboardingViewBody> createState() => _MainOnboardingViewBodyState();
}

class _MainOnboardingViewBodyState extends State<MainOnboardingViewBody> {
  int _currentPage = 0;
  void _onNext() => _controller.nextPage(
      duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
  void _onNextBottomSheet() => _bottomSheetController.nextPage(
      duration: const Duration(milliseconds: 350), curve: Curves.easeIn);

  void _onSkip() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => SplashScreenView()));
  void _handlePageChange() {
    setState(() {
      _currentPage = _controller.page?.round() ?? 0;
    });
  }

  final _bottomSheetController = PageController();
  List fTextList = ['Welcome To ', 'Meet Our ', 'Join to Our '];
  List sTextList = [
    'MSP Tech Club - Al Azhar University',
    'Team',
    'Committees'
  ];
  List descTextList = [
    'Step into the world of innovation and creativity, and inspire unconventional thinking for positive change.',
    'At the heart of our success lies our dedicated team of professionals, each driven by a shared vision to create a more sustainable world',
    'Journey thousand miles begins with one stepTake this step with us. Apply for MSP and start a new journey full of valuable information and skills that you will not find anywhere else.'
  ];
  @override
  void initState() {
    _controller.addListener(_handlePageChange);
    Future.delayed(const Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (builder) {
            return SizedBox(
              height: ScreenSize.height(context) * 0.5,
              width: ScreenSize.width(context),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenSize.height(context) * 0.4,
                    width: ScreenSize.width(context),
                    child: PageView.builder(
                      controller: _bottomSheetController,
                      itemCount: onBoarding.length,
                      itemBuilder: (_, index) => Column(
                        children: [
                          BottomSheetCustomization(
                              controller: _bottomSheetController,
                              fText: fTextList[index],
                              sText: sTextList[index],
                              description: descTextList[index]),
                          SizedBox(
                            height: ScreenSize.height(context) * 0.05,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonCustomization(
                                    buttonHeight: 0.05,
                                    buttonWidth: 0.3,
                                    onPressed: () {
                                      _onSkip();
                                    },
                                    text: 'Skip',
                                    style: FontAsset.medium16
                                        .copyWith(color: ColorAssets.mainColor),
                                    backgroundColor: Colors.white,
                                    borderCircular: 5,
                                    borderColor: ColorAssets.mainColor,
                                    borderSideWidth: 0),
                                SizedBox(
                                  width: ScreenSize.width(context) * 0.1,
                                ),
                                ButtonCustomization(
                                    buttonHeight: 0.05,
                                    buttonWidth: 0.3,
                                    onPressed: () {
                                      _currentPage == onBoarding.length - 1
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SplashScreenView()))
                                          : _onNext();
                                      _onNextBottomSheet();
                                    },
                                    text: 'Next',
                                    style: FontAsset.medium16
                                        .copyWith(color: Colors.white),
                                    backgroundColor: ColorAssets.mainColor,
                                    borderCircular: 5,
                                    borderColor: ColorAssets.mainColor,
                                    borderSideWidth: 0)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller.removeListener(_handlePageChange);
  }

  final _controller = PageController();

  List onBoarding = const [
    FOnboardingView(),
    SOnboardingView(),
    TOnboardingView()
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: ScreenSize.height(context),
            width: ScreenSize.width(context),
            child: PageView.builder(
              controller: _controller,
              itemCount: onBoarding.length,
              itemBuilder: (_, index) {
                return onBoarding[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
