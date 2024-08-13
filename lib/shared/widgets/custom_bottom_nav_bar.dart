import 'dart:ui';

import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

import 'custom_cliper_nav_bar.dart';
import 'custom_nav_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: CustomPaint(
              foregroundPainter: CustomBottomNavigationBarPainter(
                backgroundColor: Colors.white,
              ),
              painter: CustomBoxShadowNAvBar(),
              size: const Size.fromHeight(130),
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomNavItem(
                    onTap: () {},
                    title: "Home",
                    icon: Boxicons.bxs_home,
                    selected: true,
                  ),
                  CustomNavItem(
                    onTap: () {},
                    title: "Deals",
                    icon: Boxicons.bxs_purchase_tag,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  CustomNavItem(
                    onTap: () {},
                    title: "Cart",
                    icon: Boxicons.bxs_shopping_bag,
                  ),
                  CustomNavItem(
                    onTap: () {},
                    title: "Account",
                    icon: Boxicons.bxs_user,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 62,
            right: 0,
            left: -4,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.mainTextColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Boxicons.bxs_store,
                color: AppColors.primaryActive,
              ),
            ),
          )
        ],
      ),
    );
  }
}
