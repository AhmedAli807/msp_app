import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/pages/f_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/s_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/splash_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/t_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/widgets/customization/button_customization.dart';
import 'package:msp_app/msp/presentation/widgets/customization/main_onboarding/line.dart';
import 'package:msp_app/msp/presentation/widgets/customization/main_onboarding/mockup_page_view.dart';
import 'package:msp_app/utils/constants/color_assets.dart';
import 'package:msp_app/utils/constants/font_asset.dart';
import 'package:msp_app/utils/constants/screen_size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboardingViewBody extends StatefulWidget {
  const MainOnboardingViewBody({super.key});

  @override
  State<MainOnboardingViewBody> createState() => _MainOnboardingViewBodyState();
}

class _MainOnboardingViewBodyState extends State<MainOnboardingViewBody> {
  int _currentPage = 0;

  @override
  void initState() {
    _controller.addListener(_handlePageChange);
    super.initState();
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

  final _controller = PageController();
  List onBoarding = const [
    FOnboardingView(),
    SOnboardingView(),
    TOnboardingView()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.height(context) * 0.6,
                width: ScreenSize.width(context),
                child: Stack(
                  children: [
                    MockupPageView(
                        onBoarding: onBoarding, controller: _controller),
                    Positioned(
                      top: ScreenSize.height(context) * 0.565,
                      child: const Line(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: ScreenSize.height(context) * 0.5,
                      width: ScreenSize.width(context),
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _bottomSheetController,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: fTextList[index],
                                      style: const TextStyle(
                                        color: Color(0xFF030303),
                                        fontSize: 24,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: sTextList[index],
                                      style: TextStyle(
                                        color: ColorAssets.mainColor,
                                        fontSize: 24,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: ScreenSize.height(context) * 0.02,
                              ),
                              Text(
                                descTextList[index],
                                style: FontAsset.medium14
                                    .copyWith(color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: ScreenSize.height(context) * 0.02,
                              ),
                              SmoothPageIndicator(
                                controller: _controller,
                                count: 3,
                                effect: ExpandingDotsEffect(
                                    activeDotColor: ColorAssets.mainColor,
                                    dotColor:
                                        ColorAssets.mainColor.withOpacity(0.5),
                                    dotHeight:
                                        ScreenSize.height(context) * 0.02,
                                    dotWidth: ScreenSize.width(context) * 0.04),
                              ),
                              SizedBox(
                                height: ScreenSize.height(context) * 0.04,
                              ),
                              _currentPage == 0
                                  ? ButtonCustomization(
                                      onPressed: () {
                                        _onNext();
                                        _onNextBottomSheet();
                                      },
                                      text: 'Next',
                                      style: FontAsset.medium16
                                          .copyWith(color: Colors.white),
                                      backgroundColor: ColorAssets.mainColor,
                                      borderCircular: 8,
                                      borderColor: ColorAssets.mainColor,
                                      borderSideWidth: 1,
                                      buttonHeight: 0.07,
                                      buttonWidth: 0.8)
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ButtonCustomization(
                                            onPressed: () {
                                              if (_currentPage == 0) {
                                                _onSkip();
                                              } else {
                                                _onBack();
                                                _onBackBottomSheet();
                                              }
                                            },
                                            text: _currentPage == 0
                                                ? 'skip'
                                                : 'Back',
                                            style: FontAsset.medium16.copyWith(
                                                color: ColorAssets.mainColor),
                                            backgroundColor: Colors.white,
                                            borderCircular: 8,
                                            borderColor: ColorAssets.mainColor,
                                            borderSideWidth: 1,
                                            buttonHeight: 0.07,
                                            buttonWidth: 0.4),
                                        SizedBox(
                                          width:
                                              ScreenSize.width(context) * 0.05,
                                        ),
                                        ButtonCustomization(
                                            onPressed: () {
                                              _currentPage ==
                                                      onBoarding.length - 1
                                                  ? Navigator.push(context,
                                                      page_route_animate())
                                                  : _onNext();
                                              _onNextBottomSheet();
                                            },
                                            text: 'Next',
                                            style: FontAsset.medium16
                                                .copyWith(color: Colors.white),
                                            backgroundColor:
                                                ColorAssets.mainColor,
                                            borderCircular: 8,
                                            borderColor: ColorAssets.mainColor,
                                            borderSideWidth: 1,
                                            buttonHeight: 0.07,
                                            buttonWidth: 0.4),
                                      ],
                                    )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onNext() => _controller.nextPage(
      duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
  void _onNextBottomSheet() => _bottomSheetController.nextPage(
      duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
  void _onBack() => _controller.previousPage(
      duration: const Duration(microseconds: 200), curve: Curves.linear);
  void _onBackBottomSheet() => _bottomSheetController.previousPage(
      duration: const Duration(microseconds: 200), curve: Curves.linear);
  void _onSkip() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => SplashScreenView()));
  void _handlePageChange() {
    setState(() {
      _currentPage = _controller.page?.round() ?? 0;
    });
  }

  PageRouteBuilder<dynamic> page_route_animate() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SplashScreenView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }
}
