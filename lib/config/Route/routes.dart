import 'package:msp_app/msp/presentation/pages/f_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/main_on_boarding_view.dart';
import 'package:msp_app/msp/presentation/pages/s_onboarding_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/splash_screen_view.dart';
import 'package:msp_app/msp/presentation/pages/t_onboarding_screen_view.dart';

class Routes {
  static const String initialRoute = '/splash';
  static const String mainOnboarding = '/main_onboarding';
  static const String fOnboarding = '/f_onboarding';
  static const String sOnboarding = '/s_onboarding';
  static const String tOnboarding = '/t_onboarding';
}

final routes = {
  Routes.initialRoute: (context) => const SplashScreenView(),
  Routes.mainOnboarding: (context) => const MainOnboardingView(),
  Routes.fOnboarding: (context) => const FOnboardingView(),
  Routes.sOnboarding: (context) => const SOnboardingView(),
  Routes.tOnboarding: (context) => const TOnboardingView(),
};
