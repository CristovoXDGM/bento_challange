import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:bento_food_challange/shared/constants/png_assets.dart';
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
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              width: 100,
              height: 100,
              child: Image.asset(
                fakeCategories[index]["img"]!,
              ),
            ),
            Text(fakeCategories[index]["name"]!)
          ],
        );
      },
    );
  }
}

const fakeCategories = [
  {"img": PngAssets.salad, "name": "Vegan"},
  {"img": PngAssets.fruits, "name": "Fruits"},
  {"img": PngAssets.juice, "name": "Juices"},
  {"img": PngAssets.apple, "name": "Gourmet"},
];
