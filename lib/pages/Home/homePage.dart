import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widget/big_text.dart';

import '../../utils/colors.dart';
import '../../utils/dimentions.dart';
import 'food_page_body.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   // print('current height of screen'+MediaQuery.of(context).size.height.toString());
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(Dimention.forallside20),
              padding: EdgeInsets.all(Dimention.forallside5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text:'India',color: AppColor.mainColor),
                        Row(
                          children: [
                            SizedBox(width: Dimention.width20,),
                            BigText(text: 'lucknow',size: 15,color: AppColor.mainblackColor,),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        height: Dimention.height45,
                        width: Dimention.width45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimention.radius15),
                          color: AppColor.mainColor
                        ),
                        child: Icon(Icons.search,color: Colors.white,size: Dimention.iconSize24,),
                      ),
                    ),
                  ],
                ),
              ) ,

            ),
            Expanded(child: SingleChildScrollView(
              child:  FoodPage(),
            ))
           ,
          ],
        ),
      ),
    );
  }
}
