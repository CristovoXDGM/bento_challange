import 'package:flutter/material.dart';

import '../../../shared/constants/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text, this.fontSize = 19});

  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: AppColors.mainTextColor,
      ),
    );
  }
}
