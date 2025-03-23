import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:track/helper/responsive.dart';
import 'package:track/litls/widgets/customText.dart';

class CustomColumnImageAndText extends StatelessWidget {
  const CustomColumnImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/track.png',
          height: SizeConfig.screenHeight! * .3,
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
            maxLines: 7,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            text:
                'Get your favorite Telda card! Pay online or in-store andenjoy the various benefits of your selected plan'),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
