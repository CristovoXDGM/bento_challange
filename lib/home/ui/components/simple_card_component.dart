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
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.primaryActive, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
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
            rightIcon
          ],
        ),
      ),
    );
  }
}
