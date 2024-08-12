import 'dart:ui';

import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

import 'custom_cliper_nav_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: AppColors.primary,
      fontFamily: "Inter",
    );
    var iconColor = AppColors.primaryActive;

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
              padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Boxicons.bxs_home,
                          color: iconColor,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Home",
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Boxicons.bxs_purchase_tag,
                          color: iconColor,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Deals",
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Boxicons.bxs_shopping_bag,
                          color: iconColor,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Cart",
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Boxicons.bxs_user,
                          color: iconColor,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Account",
                          style: textStyle,
                        )
                      ],
                    ),
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
