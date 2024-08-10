import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CarouselIndicator extends StatefulWidget {
  const CarouselIndicator(
      {super.key, required this.currentIndex, required this.itemCount});
  final ValueNotifier currentIndex;
  final int itemCount;
  @override
  State<CarouselIndicator> createState() => _CarouselIndicartorState();
}

class _CarouselIndicartorState extends State<CarouselIndicator> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.currentIndex,
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.itemCount,
              (index) => AnimatedContainer(
                duration: Durations.medium1,
                decoration: BoxDecoration(
                  color: index == value
                      ? AppColors.primaryActive
                      : AppColors.disabledIndicatorColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 12,
                ),
                height: 9,
                width: index == value ? 40 : 9,
              ),
            ),
          );
        });
  }
}
