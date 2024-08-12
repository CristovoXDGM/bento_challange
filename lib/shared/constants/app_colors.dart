import 'package:bento_food_challange/shared/utils/get_color_from_hex.dart';

class AppColors {
  static final primary = fromHex("#50CE9B");
  static final primaryHover = fromHex("#50CE9B");
  static final primaryActive = fromHex("#51E19B");
  static final zzprimaryDisabled = fromHex("#0C5940");
  static final secondary = fromHex("#F0F5DC");
  static final secondaryHover = fromHex("#DBE8AE");
  static final secondaryActive = fromHex("#F7FAEB");
  static final secondaryDisabled = fromHex("#8BAA38");

  static final iceWhite = fromHex("#F5F5F5");
  static final lightRed = fromHex("#FF6F6A");
  static final mainTextColor = fromHex("#0F345A");
  static final greyTextColor = fromHex("#808892");
  static final disabledIndicatorColor = fromHex("#C8DAD2");

  static final lightColors = [
    primaryHover,
    secondaryHover,
    disabledIndicatorColor,
  ];
}
