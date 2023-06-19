import 'package:flutter/material.dart';
import 'package:food_app/widget/small_text.dart';

import '../utils/dimentions.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconcolor;

  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
          size: Dimention.iconSize24,
        ),
        SizedBox(
          width: 4,
        ),
        SmallText(text: text,size: 10,),
      ],
    );
  }
}
