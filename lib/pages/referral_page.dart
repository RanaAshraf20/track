import 'package:flutter/material.dart';
import 'package:track/components/close_icon.dart';
import 'package:track/components/custom_button.dart';
import 'package:track/helper/responsive.dart';
import 'package:track/litls/consts.dart';
import 'package:track/litls/widgets/customText.dart';

class ReferralPage extends StatelessWidget {
  const ReferralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              children: [
                CloseIcon(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 5),
                children: [
                  SizedBox(
                      height: SizeConfig.screenHeight! * 0.2,
                      width: SizeConfig.screenWidth! * 0.5,
                      child: Image.asset('images/referrals.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Win up to EGP 1,200 with Telda! 💸🎯',
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        fontFamily: mainFont),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      text:
                          'invite 4 friends to Telda & Earn EGP 300 for each friend who spends EGP 400'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                      textAlign: TextAlign.center, text: 'How it works:'),
                  CustomText(
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      text: '• Spending must happen over at least 2 days.'),
                  CustomText(
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      text: '• Max spending counted per day is EGP 200.'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      text: '💡Extra spending in the same day won\'t count.'),
                  CustomText(
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      text: '🔔In-store purchases only (no online payments).'),
                  CustomText(
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      text:
                          '⏳Make sure your friends join in 7 days or less to receive your prize!.'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    fullWidth: true,
                    edgeInsets:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    text: 'Invite friend',
                    textSize: 18,
                    raduis: 14,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
