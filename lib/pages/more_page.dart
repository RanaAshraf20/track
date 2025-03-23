import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:track/components/bottom_sheet_container.dart';
import 'package:track/components/custom_app_bar.dart';
import 'package:track/components/custom_more_component.dart';
import 'package:track/components/custom_row_of_small_cards.dart';
import 'package:track/litls/widgets/customText.dart';
import 'package:track/pages/get_cash_page_atm.dart';
import 'package:track/pages/get_cash_page_fawry.dart';

import '../features/profile/presentaion/profileView.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'More',
            icon: Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (context, an, sc) {
                return ProfileView();
              }));
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Essentials',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CustomRowOfSmallCards(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomMoreComponent(
                    image: 'images/points.png',
                    color: Color.fromARGB(255, 218, 237, 255).withOpacity(0.6),
                    text: 'Points',
                    onTap: () {},
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                      child: CustomText(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        text: 'Life Style',
                      )),
                  CustomMoreComponent(
                    image: "images/shops.png",
                    color: Color(0xffD3756B).withOpacity(0.2),
                    text: 'Shops',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GetCardBottomSheet extends StatelessWidget {
  const GetCardBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Column(
          children: [
            Container(
              width: 55,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.black26),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: CustomText(
              maxLines: 3,
              text: 'Withdraw cash from your account through these options',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            SizedBox(
              height: 20,
            ),
            BottomSheetContainer(
              onTap: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (context, an, sc) {
                  return GetCashPageAtm();
                }));
              },
              text: 'ATMs in Egypt',
              supTitle: 'Fees applies',
              isSupTitleWithIcon: false,
              widget: Icon(
                Icons.point_of_sale,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              onTap: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (context, an, sc) {
                  return GetCashPageFawry();
                }));
              },
              isSupTitleWithIcon: false,
              isColor: false,
              supTitle: 'Fees applies',
              image: AssetImage('images/cash.jpg'),
              text: 'Fawry outlets',
            ),
          ],
        ),
      ),
    );
  }
}
