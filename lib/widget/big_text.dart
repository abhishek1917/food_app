import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/dimentions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

   BigText({Key? key,
    required this.text,
    this.size=0,
    this.overflow=TextOverflow.ellipsis,
     this.color=const Color(0xFF322d2b),
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
          fontSize: size==0?Dimention.font20:size,
        overflow:overflow,
        fontWeight: FontWeight.normal
      ),
    );
  }
}
