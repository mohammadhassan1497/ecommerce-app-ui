import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

class LoginPage extends StatelessWidget {
  static const String route = '/login';
  const LoginPage({super.key});
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
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
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
                        'Login',
                        style: textTheme().headlineLarge,
                      ),
                      SizedBox(height: Responsive.screenHeight(context) * 0.1),
                      const AuthTextFieldWidget(
                        labelText: 'Phone Number',
                        hintText: '750 865 9585',
                        iconData: Icons.phone_outlined,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: Responsive.screenHeight(context) * 0.1),
                      PrimaryButtonWidget(
                        label: 'Next',
                        onPressed: () =>
                            Navigator.pushNamed(context, VerifyPhonePage.route),
                      )
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
