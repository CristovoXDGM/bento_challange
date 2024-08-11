import 'package:flutter/material.dart';

import '../../../shared/constants/app_colors.dart';

class SimpleCardComponent extends StatelessWidget {
  const SimpleCardComponent({
    super.key,
    required this.onTap,
    this.width,
    this.height = 86,
    required this.title,
    this.rightIcon = const SizedBox(
      width: 40,
    ),
  });
  final Function() onTap;
  final double? width;
  final double height;
  final String title;
  final Widget rightIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.primaryActive, borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Positioned(
              top: 22,
              left: 20,
              child: Text(
                title.replaceAll(" ", "\n").toUpperCase(),
                softWrap: true,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  height: 1.2,
                  color: AppColors.mainTextColor,
                ),
              ),
            ),
            Positioned(right: 0, bottom: -2, child: rightIcon)
          ],
        ),
      ),
    );
  }
}
