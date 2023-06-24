import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../main/presentation/pages/pages.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

class OnboardingPage extends StatefulWidget {
  static const String route = '/onboarding';
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _onboardingPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome to',
                style: textTheme().displayLarge,
              ),
              const SizedBox(height: 10),
              Text(
                'Phone Store',
                style: textTheme()
                    .headlineLarge
                    ?.copyWith(fontSize: 40, color: kColorPrimary),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CarouselSlider(
                      items: [
                        for (Map item in _onboardingPages)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(child: Image.asset(item['image'])),
                              const SizedBox(height: 20),
                              Text(
                                item['content'],
                                textAlign: TextAlign.center,
                                style: textTheme().titleSmall,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                      ],
                      options: CarouselOptions(
                        autoPlay: false,
                        height: Responsive.screenHeight(context) * 0.5,
                        viewportFraction: 1,
                        onPageChanged: (val, _) =>
                            setState(() => _onboardingPageIndex = val),
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: 3,
                      position: _onboardingPageIndex,
                    ),
                  ],
                ),
              ),
              PrimaryButtonWidget(
                label: 'Get Started',
                onPressed: () => Navigator.pushNamed(context, LoginPage.route),
              ),
              const SizedBox(height: 20),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t want to Sign Up? ',
                    style: textTheme().titleSmall,
                  ),
                  TextSpan(
                    text: 'Skip',
                    style: textTheme().titleSmall?.copyWith(
                          color: kColorRed,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pushNamedAndRemoveUntil(
                          context, MainPage.route, (route) => false),
                  ),
                ],
              )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

const List<Map> _onboardingPages = [
  {
    "content":
        "Lorem ipsum dolor sit amet consectetur. Netus enim feugiat neque adipiscing eget  amet faucibus id.",
    "image": kImageOnboarding
  },
  {
    "content":
        "Lorem ipsum dolor sit amet consectetur. Netus enim feugiat neque adipiscing eget  amet faucibus id.",
    "image": kImageOnboarding
  },
  {
    "content":
        "Lorem ipsum dolor sit amet consectetur. Netus enim feugiat neque adipiscing eget  amet faucibus id.",
    "image": kImageOnboarding
  },
];
