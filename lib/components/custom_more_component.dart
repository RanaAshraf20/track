import 'package:flutter/material.dart';

class CustomMoreComponent extends StatelessWidget {
  CustomMoreComponent(
      {super.key,
      required this.image,
      required this.color,
      required this.text,
      required this.onTap});
  final String image;
  final Color color;
  final String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              padding: EdgeInsets.all(8),
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: color,
              ),
              child: Image.asset(image),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          FittedBox(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
