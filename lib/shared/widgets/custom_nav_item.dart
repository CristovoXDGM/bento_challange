import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomNavItem extends StatelessWidget {
  const CustomNavItem(
      {super.key,
      this.selected = false,
      required this.title,
      required this.icon,
      required this.onTap});

  final String title;
  final IconData icon;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    var iconColor = selected ? AppColors.primaryActive : AppColors.primaryUnselected;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              color: iconColor,
              fontFamily: "Inter",
            ),
          )
        ],
      ),
    );
  }
}
