import 'package:bento_food_challange/home/ui/widgets/title_text.dart';
import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CardItemOffer extends StatelessWidget {
  const CardItemOffer(
      {super.key,
      this.dealTitle = "Top deal !",
      this.title = "avocado",
      this.subtitle = "up to 15% off",
      this.imagePath = "",
      this.backgroundColor});

  final String dealTitle;
  final String title;
  final String subtitle;
  final String imagePath;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: backgroundColor ?? AppColors.secondary,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dealTitle,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greyTextColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              TitleText(text: "Fresh ${title.toUpperCase()}"),
              const SizedBox(
                height: 4,
              ),
              TitleText(text: subtitle.toUpperCase()),
              const SizedBox(
                height: 8,
              ),
              FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.mainTextColor),
                ),
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.primaryActive,
                  ),
                ),
              )
            ],
          )),
          imagePath.isEmpty
              ? const SizedBox()
              : Flexible(
                  child: Image.asset(
                    imagePath,
                    height: 150,
                  ),
                ).animate().scale(
                    duration: const Duration(milliseconds: 400),
                    begin: const Offset(0, 0),
                  )
        ],
      ),
    );
  }
}
