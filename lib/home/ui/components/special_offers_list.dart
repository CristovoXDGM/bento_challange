import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/constants/mocked_data.dart';

class SpecialOffersList extends StatefulWidget {
  const SpecialOffersList({super.key});

  @override
  State<SpecialOffersList> createState() => _SpecialOffersListState();
}

class _SpecialOffersListState extends State<SpecialOffersList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: fruitListData.length,
      physics: const NeverScrollableScrollPhysics(),
      clipBehavior: Clip.none,
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        mainAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.push("/food-info", extra: fruitListData[index]);
          },
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.secondaryHover.withOpacity(0.6),
              borderRadius: BorderRadius.circular(14),
            ),
            width: 400,
            height: 800,
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  top: 10,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Boxicons.bxs_star,
                        size: 14,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        fruitListData[index].starRate,
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Hero(
                    tag: fruitListData[index].title,
                    child: Image.asset(
                      fruitListData[index].imagePath,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    padding: const EdgeInsetsDirectional.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    width: 100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              fruitListData[index].title,
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                color: AppColors.mainTextColor,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              fruitListData[index].price.formatPriceWithDiscount(),
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainTextColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              fruitListData[index].price.formatedPrice(),
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: AppColors.greyTextColor,
                                color: AppColors.greyTextColor,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryActive,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    height: 28,
                    width: 28,
                    child: const Icon(Boxicons.bx_plus),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
