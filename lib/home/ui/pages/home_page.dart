import 'package:bento_food_challange/home/ui/components/shop_offers_carousel.dart';
import 'package:bento_food_challange/home/ui/components/simple_card_component.dart';
import 'package:bento_food_challange/home/ui/components/special_offers_list.dart';
import 'package:bento_food_challange/home/ui/widgets/card_item_offer.dart';
import 'package:bento_food_challange/home/ui/widgets/title_text.dart';
import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:bento_food_challange/shared/constants/png_assets.dart';
import 'package:bento_food_challange/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/constants/mocked_data.dart';
import '../components/shop_categories_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final sizer = MediaQuery.of(context).size;
    Animate.restartOnHotReload = true;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leadingWidth: sizer.width,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.mainTextColor,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Bancangan, Sambit",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      color: AppColors.greyTextColor,
                    ),
                  ),
                  Icon(
                    Boxicons.bx_chevron_down,
                    color: AppColors.mainTextColor,
                  )
                ],
              ),
            ],
          ).animate().slideX(),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Icon(Boxicons.bx_user_circle),
            ),
          ).animate().slideX(begin: 2)
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox.expand(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: SimpleCardComponent(
                            title: "Order Again",
                            onTap: () {},
                            rightIcon: Image.asset(
                              PngAssets.vegetables,
                              height: 70,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: SimpleCardComponent(
                            title: "Local Shop",
                            onTap: () {},
                            rightIcon: Image.asset(
                              PngAssets.store_869432,
                              height: 70,
                            ),
                          ),
                        )
                      ],
                    ),
                  ).animate().slide(),
                  const SizedBox(
                    height: 20,
                  ),
                  ShopOffersCarousel(
                    carouselWidgets: fakeoffersList
                        .map(
                          (item) => CardItemOffer(
                            onTap: () {
                              context.push("/food-info", extra: item);
                            },
                            imagePath: item.imagePath,
                            title: item.title,
                            backgroundColor: item.backgroundColor,
                          ),
                        )
                        .toList(),
                  ).animate().slide(),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Shop by category",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: AppColors.mainTextColor,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const ShopCategoriesList(),
                  ).animate().slideX(),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        const TitleText(text: "Today's Special").animate(
                            onComplete: (control) {
                          control.repeat();
                        }).shimmer(duration: const Duration(seconds: 2)),
                        const Spacer(),
                        GestureDetector(
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.primaryActive,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(height: 400, child: SpecialOffersList())
                      .animate()
                      .slideX(),
                  const SizedBox(
                    height: 160,
                  ),
                ],
              ),
            ),
          ).animate().fadeIn(
                begin: 0,
                duration: const Duration(milliseconds: 600),
              ),
          const Positioned(
            bottom: -2,
            left: 0,
            right: 0,
            child: CustomBottomNavBar(),
          ),
        ],
      ),
    );
  }
}
