import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:track/pages/bottom_sheet_page.dart';
import 'package:track/pages/edit_categories_page.dart';
import 'package:track/pages/get_your_card.dart';
import 'package:track/pages/home_page.dart';
import 'package:track/pages/insights_page.dart';
import 'package:track/pages/new_trasfer_page.dart';
import 'package:track/pages/rewards_page.dart';
import 'package:track/pages/search_page.dart';
import 'package:track/pages/transfers_page.dart';

import 'features/onBoardingViews/welcomeView.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  runApp(const TeldaApp());
}

class TeldaApp extends StatelessWidget {
  const TeldaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      TransfersPage.id: (context) => TransfersPage(),
      NewTrasferPage.id: (context) => NewTrasferPage(),
      SearchPage.id: (context) => SearchPage(),
      InsightsPage.id: (context) => InsightsPage(),
      EditCategoriesPage.id: (context) => EditCategoriesPage(),
      BottomSheetPage.id: (context) => BottomSheetPage(),
      HomePage.id: (context) => HomePage(),
      GetYourCard.id: (context) => GetYourCard(),
      RewardsPage.id: (context) => RewardsPage(),
    }, debugShowCheckedModeBanner: false, home: WelcomeView());
  }
}
