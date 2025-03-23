import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:track/litls/widgets/customText.dart';
import 'package:track/pages/bottom_sheet_page.dart';

class BottomSheetContainer extends StatelessWidget {
  BottomSheetContainer(
      {super.key,
      required this.text,
      this.widget,
      this.image,
      this.isColor = true,
      this.supTitle = 'Instant',
      this.isSupTitleWithIcon = true,
      this.onTap});
  final String text;
  ImageProvider<Object>? image;
  Widget? widget;
  bool? isColor;
  String? supTitle;
  bool? isSupTitleWithIcon;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: isColor!
              ? CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black12.withOpacity(0.06),
                  child: widget)
              : CircleAvatar(
                  radius: 25,
                  backgroundImage: image,
                  backgroundColor: Colors.white,
                ),
          title: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          subtitle: isSupTitleWithIcon!
              ? Row(
                  children: [
                    Icon(
                      Icons.bolt, size: 16,
                      color: Color(0xff345CFF),
                      // color: Colors.indigoAccent
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      text: supTitle!,
                      color: Color(0xff345CFF),
                    ),
                  ],
                )
              : CustomText(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  text: supTitle!,
                  color: Colors.black38),
          trailing: Icon(
            FontAwesomeIcons.angleRight,
            size: 18,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
