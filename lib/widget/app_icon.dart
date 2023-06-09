import 'package:flutter/material.dart';
import 'package:food_app/utils/dimentions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backGroundcolor;
  final Color iconColor;
  final double size;
  final double iconSize;


  const AppIcon({Key? key, required this.icon,  this.backGroundcolor=const Color(0xFFfcF4e4), this.iconColor= const Color(0xFF756d54), this.size=40,  this.iconSize=16,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backGroundcolor
      ),
      child: Icon(icon,color: iconColor,size:iconSize),
    );
  }
}
