import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:pinput/pinput.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../main/presentation/pages/pages.dart';
import '../widgets/widgets.dart';

class VerifyPhonePage extends StatelessWidget {
  static const String route = '/verify-phone';
  const VerifyPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: KeyboardVisibilityBuilder(
              builder: (_, isKeyboardVisible) => Image.asset(
                kImageLoginBackdrop,
                height: Responsive.screenHeight(context) *
                    (isKeyboardVisible ? 0.15 : 0.3),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              decoration: const BoxDecoration(
                color: kColorLightPrimary,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'OTP',
                        style: textTheme().headlineLarge,
                      ),
                      SizedBox(height: Responsive.screenHeight(context) * 0.1),
                      Text(
                        'OTP',
                        style: textTheme().titleMedium,
                      ),
                      const SizedBox(height: 10),
                      Pinput(
                          length: 6,
                          defaultPinTheme: PinTheme(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: kColorGray.withOpacity(0.5),
                            ),
                          ),
                          onCompleted: (pin) {}),
                      SizedBox(height: Responsive.screenHeight(context) * 0.1),
                      PrimaryButtonWidget(
                        label: 'Next',
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, MainPage.route, (route) => false),
                      ),
                      const SizedBox(height: 10),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: 'Didn\'t receive the code? ',
                          style: textTheme().titleSmall,
                        ),
                        TextSpan(
                          text: 'Resend',
                          style: textTheme().titleSmall?.copyWith(
                                color: kColorRed,
                              ),
                        ),
                      ]))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
