import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/config.dart';
import '../../../../core/assets.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: textTheme().titleMedium?.copyWith(color: kColorPrimary),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(kIconSearch),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(kIconFilter),
          ),
          border: inputBorder,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
          filled: true,
          fillColor: kColorLightPrimary,
        ),
      ),
    );
  }
}
