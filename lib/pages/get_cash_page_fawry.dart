import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:track/components/close_icon.dart';
import 'package:track/components/custom_button.dart';

import 'package:track/helper/responsive.dart';
import 'package:track/litls/consts.dart';

class GetCashPageFawry extends StatelessWidget {
  const GetCashPageFawry({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CloseIcon(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 30),
                children: [
                  SizedBox(
                      height: SizeConfig.screenHeight! * 0.07,
                      width: SizeConfig.screenWidth! * 0.5,
                      child: Image.asset('images/Fawry_Logo.png')),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.07,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Withdraw cash from your account through Fawry',
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: mainFont),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.diamondTurnRight,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Go to your nearest Fawry Plus or Kiosk that support Fawry payments',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: mainFont),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.triangleExclamation,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Ask for this code to make the top up',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: mainFont),
                    ),
                    trailing: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        '46699',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.payment,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Insert your card in the Fawry POS and enter your 4-digits card PIN',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: mainFont),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Text(
                                  'EGP 5 fee',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      fontFamily: mainFont),
                                ),
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                child: Text(
                                  ' will be applied +',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: mainFont),
                                ),
                              ),
                            ),
                          ],
                        ),
                        FittedBox(
                          child: Text(
                            'fawry adminstrative fees',
                            style:
                                TextStyle(fontSize: 16, fontFamily: mainFont),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              fullWidth: true,
              edgeInsets:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              text: 'Find your card now',
              textSize: 18,
              raduis: 14,
            ),
          ],
        ),
      )),
    );
  }
}
