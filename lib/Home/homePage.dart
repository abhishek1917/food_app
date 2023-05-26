import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widget/big_text.dart';

import '../utils/colors.dart';
import 'food_page_body.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text:'India',color: AppColor.mainColor),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            BigText(text: 'lucknow',size: 15,color: AppColor.mainblackColor,),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.mainColor
                        ),
                        child: Icon(Icons.search,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ) ,

            ),
            FoodPage(),
          ],
        ),
      ),
    );
  }
}
