import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:track/components/close_icon.dart';
import 'package:track/components/custom_button.dart';

import 'package:track/helper/responsive.dart';
import 'package:track/litls/consts.dart';

class GetCashPageAtm extends StatelessWidget {
  const GetCashPageAtm({super.key});

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
                padding: EdgeInsets.symmetric(vertical: 10),
                children: [
                  SizedBox(
                      height: SizeConfig.screenHeight! * 0.2,
                      width: SizeConfig.screenWidth! * 0.5,
                      child: Image.asset('images/atmm.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Withdraw cash from your account through any ATM in Egypt',
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
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
                      'Go to your nearest ATM for any bank all over Egypt',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: mainFont),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.payment,
                      color: Colors.black,
                      size: 22,
                    ),
                    title: Text(
                      'Insert your Telda card in the ATM, enter your 4-digits card PIN and choose "Cash withdrawal" ',
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
                      'Make sure to select withdraw from "Current Account"',
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
                  Text(
                    'EGP 5 fee',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontFamily: mainFont),
                  ),
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        ' will be applied',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, fontFamily: mainFont),
                      ),
                    ),
                  ),
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
              text: 'Get your card now',
              textSize: 18,
              raduis: 14,
            ),
          ],
        ),
      )),
    );
  }
}
