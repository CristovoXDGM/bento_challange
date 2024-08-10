import 'package:flutter/material.dart';

import '../../../shared/constants/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w900,
        fontSize: 19,
        color: AppColors.mainTextColor,
      ),
    );
  }
}
