import 'package:bento_food_challange/home/ui/widgets/title_text.dart';
import 'package:bento_food_challange/shared/constants/app_colors.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

class SpecialOffersList extends StatefulWidget {
  const SpecialOffersList({super.key});

  @override
  State<SpecialOffersList> createState() => _SpecialOffersListState();
}

class _SpecialOffersListState extends State<SpecialOffersList> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
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
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryHover,
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
                        "4.5",
                        style: TextStyle(
                            fontFamily: "Inter", color: AppColors.mainTextColor),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    width: 100,
                    child: Column(
                      children: [
                        const Row(
                          children: [TitleText(text: "Red berry"), Spacer()],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$8.15",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainTextColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "\$8.15",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 14,
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
                          topLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
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
