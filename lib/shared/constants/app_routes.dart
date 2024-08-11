import 'package:bento_food_challange/food_info/ui/food_info_page.dart';
import 'package:bento_food_challange/home/ui/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import 'mocked_data.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: "/",
        builder: (context, state) {
          return const HomePage();
        }),
    GoRoute(
        path: "/food-info",
        builder: (context, state) {
          return FoodInfoPage(
            selectedFruitd: state.extra as FruitData,
          );
        }),
  ],
);
