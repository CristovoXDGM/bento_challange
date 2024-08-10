import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ShopCategoriesList extends StatefulWidget {
  const ShopCategoriesList({super.key});

  @override
  State<ShopCategoriesList> createState() => _ShopCategoriesListState();
}

class _ShopCategoriesListState extends State<ShopCategoriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      clipBehavior: Clip.none,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              width: 100,
              height: 100,
            ),
            const Text("Category")
          ],
        );
      },
    );
  }
}
