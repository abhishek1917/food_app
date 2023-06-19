import 'package:flutter/material.dart';
import 'package:food_app/widget/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimentions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text:text,size: Dimention.font26,),
        SizedBox(
          height: Dimention.height10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: AppColor.mainColor,
                    size: 15,
                  );
                })),
            SizedBox(
              width: 8,
            ),
            SmallText(text: '4.5', size: 15),
            SizedBox(
              width: 8,
            ),
            SmallText(text: '1282', size: 15),
            SizedBox(
              width: 8,
            ),
            SmallText(text: 'comments', size: 15)
          ],
        ),
        SizedBox(
          height: Dimention.height20,
        ),
        Row(
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconcolor: AppColor.iconColor1),
            SizedBox(
              width: 20,
            ),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7 km',
                iconcolor: AppColor.mainColor),
            SizedBox(
              width: 20,
            ),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: '37 min',
                iconcolor: AppColor.iconColor2)
          ],
        )
      ],
    );
  }
}
