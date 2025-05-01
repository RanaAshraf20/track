import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:track/components/close_icon.dart';
import 'package:track/litls/widgets/customText.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});
  static String id = 'RewardsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CloseIcon(
              onTap: Navigator.of(context).pop,
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Rewards',
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(14)),
                  child: Center(
                    child: Text(
                      'No Active Reward',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 16,
                    right: 28,
                    child: Icon(
                      FontAwesomeIcons.clock,
                      color: Colors.grey.shade600,
                      size: 14,
                    ))
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Available rewards',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'You currently don\'t have any available rewards',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
