import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/mocked_data.dart';

class ShopCategoriesList extends StatefulWidget {
  const ShopCategoriesList({super.key});

  @override
  State<ShopCategoriesList> createState() => _ShopCategoriesListState();
}

class _ShopCategoriesListState extends State<ShopCategoriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeCategories.length,
      clipBehavior: Clip.none,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.iceWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              width: 80,
              height: 80,
              child: Image.asset(
                fakeCategories[index]["img"]!,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              fakeCategories[index]["name"]!,
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: AppColors.mainTextColor,
              ),
            )
          ],
        );
      },
    );
  }
}
