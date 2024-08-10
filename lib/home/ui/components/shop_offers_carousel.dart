import 'package:flutter/material.dart';

import 'carousel_indicartor.dart';

class ShopOffersCarousel extends StatefulWidget {
  const ShopOffersCarousel({
    super.key,
    this.carouselHeight = 180,
    this.carouselWidgets = const [],
  });
  final double carouselHeight;
  final List<Widget> carouselWidgets;
  @override
  State<ShopOffersCarousel> createState() => _ShopOffersCarouselState();
}

class _ShopOffersCarouselState extends State<ShopOffersCarousel> {
  final _pageViewController = PageController();
  final _currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        SizedBox(
          height: widget.carouselHeight,
          width: double.maxFinite,
          child: Stack(
            fit: StackFit.expand,
            children: [
              PageView.builder(
                clipBehavior: Clip.none,
                onPageChanged: (value) {
                  _currentIndex.value = value;
                },
                itemCount: widget.carouselWidgets.length,
                controller: _pageViewController,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        child: widget.carouselWidgets[index]),
                  );
                },
              ),
            ],
          ),
        ),
        CarouselIndicator(
          currentIndex: _currentIndex,
          itemCount: widget.carouselWidgets.length,
        )
      ],
    );
  }
}
