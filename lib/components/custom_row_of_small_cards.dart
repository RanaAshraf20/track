import 'package:flutter/material.dart';
import 'package:track/pages/more_page.dart';
import 'package:track/pages/referral_page.dart';

import 'custom_more_component.dart';

class CustomRowOfSmallCards extends StatelessWidget {
  const CustomRowOfSmallCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CustomMoreComponent(
            image: 'images/get cach.png',
            color: Color(0xffC3D2E9).withOpacity(0.5),
            text: 'Get cash',
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  useSafeArea: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  backgroundColor: Colors.grey.shade200,
                  context: context,
                  builder: (context) {
                    return GetCardBottomSheet();
                  });
            },
          ),
        ),
        Flexible(
          child: CustomMoreComponent(
            image: 'images/referral.png',
            color: Color.fromARGB(255, 238, 248, 255),
            text: 'Referrals',
            onTap: () {
              Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (context, an, sc) {
                return ReferralPage();
              }));
            },
          ),
        ),
        Flexible(
          child: CustomMoreComponent(
            image: 'images/rewards.png',
            color: Color(0xffFFDE03).withOpacity(0.2),
            text: 'Rewards',
            onTap: () {},
          ),
        ),
        Flexible(
          child: CustomMoreComponent(
            image: 'images/pay later.png',
            color: Color(0xff8CDFC3).withOpacity(.2),
            text: 'Pay later',
            onTap: () {},
          ),
        )
      ],
    );
  }
}
