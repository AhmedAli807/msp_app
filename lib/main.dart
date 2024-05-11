import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msp_app/config/Route/routes.dart';
import 'package:msp_app/config/Themes/app_themes.dart';
import 'package:msp_app/msp/presentation/pages/f_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/main_on_boarding_view.dart';
import 'package:msp_app/msp/presentation/pages/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainOnboardingView(),
      theme: appTheme(),
    );
  }
}
