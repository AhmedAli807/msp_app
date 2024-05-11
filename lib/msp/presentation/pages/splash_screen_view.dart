import 'package:flutter/material.dart';
import 'package:msp_app/msp/presentation/widgets/splash_screen/splash_screen_view_body.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreenViewBody();
  }
}
