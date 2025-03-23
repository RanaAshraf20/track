import 'package:flutter/material.dart';
import 'package:track/components/custom_search_container.dart';
import 'package:track/components/custom_transfers_app_bar.dart';
import 'package:track/components/custom_transfers_card.dart';
import 'package:track/pages/new_trasfer_page.dart';

class TransfersPage extends StatelessWidget {
  const TransfersPage({super.key});

  static String id = 'TransfersPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          children: [
            CustomTransfersAppBar(),

            SizedBox(
              height: 20,
            ),
            CustomSearchContainer(),
            CustomTransfersCard(onPressed: () {
              Navigator.pushNamed(context, NewTrasferPage.id);
            }),
            SizedBox(
              height: 20,
            ),
            // CustomListTileContainer(text: 'Telda friends', itemCount: 3),
            // SizedBox(
            //   height: 20,
            // ),
            // CustomListTileContainer(text: 'Other', itemCount: 10)
          ],
        ),
      ),
    );
  }
}
