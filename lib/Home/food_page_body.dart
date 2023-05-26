import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/widget/big_text.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 300,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _builPageItem(position);
          }),
    );
  }

  Widget _builPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 210,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // color:Color(0xFF89dad0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/image/food0.png'),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Chinese Side'),
                  Row(
                    children: [
                      Wrap(
                          children: List.generate(5, (index) {
                        return Icon(Icons.star,color: AppColor.mainColor,size: 15,);
                      }))
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
