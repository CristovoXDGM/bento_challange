import 'package:bento_food_challange/home/ui/components/shop_offers_carousel.dart';
import 'package:bento_food_challange/home/ui/widgets/title_text.dart';
import 'package:bento_food_challange/shared/constants/mocked_data.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../shared/constants/app_colors.dart';

class FoodInfoPage extends StatefulWidget {
  const FoodInfoPage({super.key, required this.selectedFruitd});
  final FruitData selectedFruitd;

  @override
  State<FoodInfoPage> createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  bool favorited = false;

  final iconsLsit = [
    Icon(
      Boxicons.bx_dish,
      color: AppColors.mainTextColor,
    ),
    Icon(
      Boxicons.bx_cool,
      color: AppColors.mainTextColor,
    ),
    Icon(
      Icons.food_bank,
      color: AppColors.mainTextColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Boxicons.bx_chevron_left,
                size: 35,
              ),
            ).animate().slideX(
                  begin: -2,
                ),
            onTap: () {
              context.pop();
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                favorited = !favorited;
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  shape: BoxShape.circle,
                ),
                child: favorited
                    ? Icon(
                        Boxicons.bxs_heart,
                        color: AppColors.lightRed,
                      ).animate().shake()
                    : const Icon(Boxicons.bx_heart),
              ),
            ).animate().slideX(
                  begin: 2,
                ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 130,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 2, offset: Offset(0, 2))]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.greyTextColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      widget.selectedFruitd.price.formatPriceWithDiscount(),
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.selectedFruitd.price.formatedPrice(),
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppColors.greyTextColor,
                        color: AppColors.greyTextColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primaryActive)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.mainTextColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShopOffersCarousel(
                carouselHeight: 300,
                carouselWidgets: [
                  Hero(
                    tag: widget.selectedFruitd.title,
                    child: Image.asset(widget.selectedFruitd.imagePath),
                  ),
                  Image.asset(widget.selectedFruitd.imagePath),
                  Image.asset(widget.selectedFruitd.imagePath),
                ],
              ),
              Row(
                children: [
                  TitleText(
                    text: widget.selectedFruitd.title,
                    fontSize: 34,
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                            )
                          ]),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Boxicons.bxs_star,
                            size: 24,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.selectedFruitd.starRate,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inter",
                              fontSize: 20,
                              color: AppColors.mainTextColor,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Shop: ${widget.selectedFruitd.shopName}",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greyTextColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: AppColors.iceWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    widget.selectedFruitd.foodDetails!.length,
                    (index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: AppColors.lightColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: iconsLsit[index],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.selectedFruitd.foodDetails![index],
                          style: TextStyle(
                            fontFamily: "Inter",
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleText(
                text: "Details",
                fontSize: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque efficitur faucibus lorem, vel blandit erat tincidunt bibendum. Nam sit amet lorem porta, venenatis dui sed, cursus nunc. In facilisis, odio eu vehicula fermentum, nunc ante ultrices velit, non lobortis ligula massa sit amet diam. Phasellus scelerisque tellus vestibulum leo vehicula, a dignissim velit pellentesque.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.mainTextColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
