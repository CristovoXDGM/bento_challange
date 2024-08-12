// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bento_food_challange/shared/constants/png_assets.dart';

class FruitData {
  final String title;
  final String shopName;
  final String starRate;
  final String details;
  final String imagePath;
  final Price price;

  final List<String>? foodDetails;

  FruitData({
    required this.title,
    required this.shopName,
    required this.starRate,
    required this.details,
    required this.price,
    required this.imagePath,
    this.foodDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'shopName': shopName,
      'starRate': starRate,
      'details': details,
      'price': price.toMap(),
      "imagePath": imagePath,
      'foodDetails': foodDetails,
    };
  }

  factory FruitData.fromMap(Map map) {
    return FruitData(
      title: map['title'] as String,
      shopName: map['shopName'] as String,
      starRate: map['starRate'] ?? "4.5",
      details: map['details'] as String,
      price: Price.fromMap(map),
      imagePath: map["imagePath"],
      foodDetails: map['foodDetails'] != null
          ? List<String>.from(
              (map['foodDetails'] as List<String>),
            )
          : [],
    );
  }

  String toJson() => json.encode(toMap());
}

class Price {
  final double price;

  Price(this.price);

  String formatedPrice() {
    // final dollars = price ~/ 100;
    // final centsPart = price % 100;

    return "\$$price";
  }

  String formatPriceWithDiscount() {
    final priceWithDiscount = price - (price * (20 / 100));

    return "\$${priceWithDiscount.toStringAsFixed(2)}";
  }

  Map toMap() {
    return <String, dynamic>{
      'price': price,
    };
  }

  factory Price.fromMap(Map map) {
    return Price(
      double.parse(map['price']),
    );
  }

  String toJson() => json.encode(toMap());
}

final fruitListData =
    mockedFruitsData.map((element) => FruitData.fromMap(element)).toList();

const fakeCategories = [
  {"img": PngAssets.salad, "name": "Vegan"},
  {"img": PngAssets.fruits, "name": "Fruits"},
  {"img": PngAssets.juice, "name": "Juices"},
  {"img": PngAssets.apple, "name": "Gourmet"},
];
const mockedFruitsData = [
  {
    "title": "Red Apple",
    "shopName": "Farmer's Market",
    "details": "Crisp and juicy, perfect for snacking",
    "imagePath": PngAssets.appleFruit,
    "foodDetails": ["Sweet", "Red", "Crisp"],
    "price": "1.99"
  },
  {
    "title": "Green leaf",
    "shopName": "Green Corner",
    "details": "Fresh and leafy",
    "imagePath": PngAssets.greenLeaftTwo,
    "foodDetails": ["Leafy", "Green", "Healthy"],
    "price": "2.49"
  },
  {
    "title": "Red Tomatoe",
    "shopName": "Tomatoe world",
    "details": "From good farmers",
    "imagePath": PngAssets.tomatoe,
    "foodDetails": ["Red fruit", "Delicious", "Clean"],
    "price": "19.99"
  },
  {
    "title": "Orange",
    "shopName": "Fresh Corner",
    "details": "100% pure orange",
    "imagePath": PngAssets.orange,
    "foodDetails": ["Orange", "Juicy", "Refreshing"],
    "price": "3.99"
  },
  {
    "title": "Banana",
    "shopName": "Tropical Fruits",
    "details": "Yellow and sweet, perfect for breakfast",
    "imagePath": PngAssets.bannatwo,
    "foodDetails": ["Yellow", "Sweet", "Potassium-rich"],
    "price": "0.79"
  },
  {
    "title": "Cabbage",
    "shopName": "Brazilian market",
    "details": "Crispy and nice",
    "imagePath": PngAssets.cabbage,
    "foodDetails": ["Good cabbage", "Clean", "Healthy"],
    "price": "8.99"
  }
];
