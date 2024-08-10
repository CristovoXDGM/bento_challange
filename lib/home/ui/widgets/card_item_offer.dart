import 'package:bento_food_challange/home/ui/widgets/title_text.dart';
import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CardItemOffer extends StatelessWidget {
  const CardItemOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondary,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top deal !",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    color: AppColors.greyTextColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TitleText(text: "Fresh avocado".toUpperCase()),
                const SizedBox(
                  height: 4,
                ),
                TitleText(text: "up to 15% off".toUpperCase()),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
