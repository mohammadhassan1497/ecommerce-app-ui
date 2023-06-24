import 'package:flutter/material.dart';

import '../../../../config/config.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final IconData iconData;
  final String hintText;
  final String labelText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  const AuthTextFieldWidget({
    super.key,
    required this.iconData,
    required this.labelText,
    required this.hintText,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: textTheme().titleMedium,
        ),
        const SizedBox(height: 10),
        TextFormField(
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            hintText: hintText,
            hintStyle: textTheme().titleSmall?.copyWith(
                  color: kColorDarkTeal,
                ),
            fillColor: kColorGray.withOpacity(0.5),
            filled: true,
            border: inputBorder,
            enabledBorder: inputBorder,
            focusedBorder: inputBorder,
            prefixIcon: Icon(iconData, color: kColorDarkTeal),
          ),
        ),
      ],
    );
  }
}
