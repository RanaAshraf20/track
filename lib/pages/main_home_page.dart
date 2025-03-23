import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:track/components/custom_navigation_bar.dart';
import 'package:track/pages/cards_page.dart';
import 'package:track/pages/home_page.dart';
import 'package:track/pages/more_page.dart';
import 'package:track/pages/transfers_page.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    TransfersPage(),
    CardsPage(),
    MorePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _screens[_currentIndex],
        bottomNavigationBar: CustomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
