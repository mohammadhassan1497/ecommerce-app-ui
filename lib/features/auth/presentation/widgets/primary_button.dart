import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const PrimaryButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(double.infinity, 60),
        backgroundColor: kColorPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide.none,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: textTheme().headlineMedium?.copyWith(color: kColorWhite),
      ),
    );
  }
}
