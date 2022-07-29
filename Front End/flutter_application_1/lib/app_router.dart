import 'package:flutter/material.dart';

import 'screens/screens.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.name: ((context) => const SplashScreen()),
    LanguageScreen.name: ((context) => const LanguageScreen()),
    OnBoardingScreen.name: ((context) => const OnBoardingScreen()),
    OnBoardingScreen2.name: ((context) => const OnBoardingScreen2()),
    OnBoardingScreen3.name: ((context) => const OnBoardingScreen3()),
    SignInScreen.name: ((context) => const SignInScreen()),
    OtpVerificationScreen.name: ((context) => const OtpVerificationScreen()),
    DashBoard.name: ((context) => DashBoard()),
    ProfileScreen.name: ((context) => const ProfileScreen()),
    NotificationScreen.name: ((context) => const NotificationScreen()),
    TotalContactScreen.name: ((context) => const TotalContactScreen()),
    PackagesScreen.name: ((context) => const PackagesScreen()),
    PropertiesScreen.name: ((context) => const PropertiesScreen()),
    EnquriesScreen.name: ((context) => const EnquriesScreen()),
    AgentScreen.name: ((context) => const AgentScreen()),
  };
}
