import 'package:flutter/material.dart';
import 'package:track/widgets/get_your_cards_body.dart';

class GetYourCard extends StatelessWidget {
  const GetYourCard({super.key});
  static String id = 'GetYourCard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 16.0, right: 20.0, top: 10, bottom: 30),
          child: GetYourCardBody(id: id),
        ),
      ),
    );
  }
}
