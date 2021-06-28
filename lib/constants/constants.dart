import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  static const primaryColor = const Color(0xff0A0D36);
  static const backroundColor = const Color(0xff0A0D36);
  static const backroundColorDark = const Color(0xff000121);
  static const titleColor = const Color(0xffD8D8D8);
  static const purple = const Color(0xff5D1CD4);
  static const disable = const Color(0xff898989);
  static const grey = const Color(0xffA5A5A5);
  static const green = const Color(0xff4DF687);
  static const black = const Color(0xff2C1F44);
  static const blue = const Color(0xff27CDB2);
  static const background = const Color(0xffF7F7F7);
  static const red = const Color(0xffF43834);
  static const cardGrey = const Color(0xffECECEC);
  static const gifBackground = const Color(0xfcfcffff);
  static const yellow = Colors.yellow;

  static const MaterialColor primarySwatch = const MaterialColor(
    0xff0A0D36,
    const <int, Color>{
      50: const Color(0xff5D1CD4),
      51: const Color(0xff5D1CD4),
      100: const Color(0xff5D1CD4),
      200: const Color(0xff5D1CD4),
      300: const Color(0xff5D1CD4),
      400: const Color(0xff5D1CD4),
      500: const Color(0xff5D1CD4),
      600: const Color(0xff5D1CD4),
      700: const Color(0xff5D1CD4),
      800: const Color(0xff5D1CD4),
      900: const Color(0xff5D1CD4),
    },
  );
  static const List onboardingTitles = [
    "Pack Deliveries",
    "Handoff Rider",
    "Well Done!",
  ];
  static const List onboardingTexts = [
    "When shipping and goods are damaged or damaged, goods can be returned, and can be exchanged for new or refunded money.",
    "In this application provides a special delivery feature, which is fast delivery, in this application you can also enjoy other types of shipping.",
    "Neat packaging is a very safe service for goods sent, so the goods sent are undamaged and safe to the destination.",
  ];
  static const List onboardingMiddleAssets = [
    "assets/onboarding1.svg",
    "assets/onboarding2.svg",
    "assets/onboarding3.svg"
  ];
  static const List onboardingBgs = [
    "assets/onboarding-large-1.jpeg",
    "assets/onboarding-large-2.jpeg",
    "assets/onboarding-large-3.jpeg",
  ];

  static const reportModalAsset = "assets/watermelon_report.svg";

  static const emergencyAccidentTexts = [
    "I had an accident",
    "I have a problem with vehicle",
    "Order damaged",
    "Other (Provide Details)"
  ];

  static const missingClientTexts = [
    "I have arrived the correct delivery address",
    "I ring the bell to notify client about my arrival",
    "I called the client to notify my arrival"
  ];

  static const List filterDates = [
    "Today",
    "Yesterday",
    "This Week",
    "This Month",
    "Last Three Months",
    "All",
  ];

  static const List filterOrderStatus = [
    "All",
    "Active",
    "Delivered",
    "Canceled",
    "Failed",
  ];

  static const String aboutUsCmsKey = "about-us";
  static const String privacyPolicyCmsKey = "privacy-policy";

  static const List filterNotificationsStatus = [
    "All",
    "Order",
    "System",
    "Other",
  ];
}
