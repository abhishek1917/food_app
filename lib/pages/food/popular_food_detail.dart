
import 'package:flutter/material.dart';
import 'package:food_app/widget/app_icon.dart';

import '../../utils/colors.dart';
import '../../utils/dimentions.dart';
import '../../widget/app_column.dart';
import '../../widget/big_text.dart';
import '../../widget/expendableTextWidget.dart';
import '../../widget/icon_and_text_widget.dart';
import '../../widget/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
              width: double.maxFinite,
                height: Dimention.popularfoodimageSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                ),
          )),
          Positioned(
            top:Dimention.height45 ,
          left: Dimention.width20,
              right: Dimention.width20 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined)
            ],
          )),
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimention.popularfoodimageSize-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimention.width20,right: Dimention.width20,top:Dimention.width20 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimention.radius20),
                    topLeft: Radius.circular(Dimention.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: 'Chinese Side'),
                    SizedBox(
                      height: Dimention.height20,
                    ),
                    BigText(text: 'Intriduction'),
                    SizedBox(
                      height: Dimention.height20,
                    ),
                    Expanded(child: SingleChildScrollView(child: ExpendableTextWidget(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"))),
                  ],
                ),
          ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimention.bottomHeightBar,
        padding: EdgeInsets.only( top: Dimention.height30,bottom: Dimention.height30,left: Dimention.width20,right: Dimention.width20),
        decoration: BoxDecoration(
          color: AppColor.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimention.radius20*2) ,
            topRight:  Radius.circular(Dimention.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:EdgeInsets.all(Dimention.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimention.radius20) ,
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColor.signColor),
                  SizedBox(width: Dimention.width20/2),
                  BigText(text: '0'),
                  SizedBox(width: Dimention.width20/2),
                  Icon(Icons.add,color: AppColor.signColor),
                ],
              ),
            ),
            Container(
              padding:EdgeInsets.all(Dimention.width20) ,
              child: BigText(text: "\$10 | Add to Cart",),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimention.radius20),
                color: AppColor.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
