import 'package:flutter/material.dart';

import '../features/auth/presentation/pages/pages.dart';
import '../features/main/presentation/pages/pages.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  LoginPage.route: (context) => const LoginPage(),
  VerifyPhonePage.route: (context) => const VerifyPhonePage(),
  OnboardingPage.route: (context) => const OnboardingPage(),
  MainPage.route: (context) => const MainPage(),
};
