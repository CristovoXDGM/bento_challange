import 'package:bento_food_challange/home/ui/components/shop_offers_carousel.dart';
import 'package:bento_food_challange/home/ui/components/simple_card_component.dart';
import 'package:bento_food_challange/home/ui/widgets/card_item_offer.dart';
import 'package:bento_food_challange/home/ui/widgets/title_text.dart';
import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Icon(Boxicons.bx_user_circle),
            ),
          )
        ],
      ),
      body: SizedBox.expand(
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
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: SimpleCardComponent(
                        title: "Local Shop",
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ShopOffersCarousel(
                carouselWidgets: [
                  CardItemOffer(),
                  CardItemOffer(),
                  CardItemOffer(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TitleText(text: "Shop by category")),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const ShopCategoriesList(),
              )
            ],
          ),
        ),
      ).animate().fadeIn(begin: 0, duration: const Duration(milliseconds: 800)),
    );
  }
}
