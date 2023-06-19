

import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimentions.dart';
import 'package:food_app/widget/app_icon.dart';
import 'package:food_app/widget/big_text.dart';

import '../../widget/expendableTextWidget.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
               AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20), child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(Dimention.radius20),topLeft: Radius.circular(Dimention.radius20))
              ),
              padding: EdgeInsets.only(top: Dimention.height10/2,bottom:Dimention.height10),
              child: Center(
                child: BigText(size: Dimention.font26,text: "Chinese Side",)
              ),
            ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColor.yelloColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/image/food0.png',
              width: double.maxFinite,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.only(left: Dimention.width15,right:Dimention.width15 ),
                 child: ExpendableTextWidget(text:
                     "Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.publishing software like Aldus PageMaker including versions of Lorem Ipsum.printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishingLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishingLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. software like Aldus PageMaker including versions of Lorem Ipsum. software like Aldus PageMaker including versions of Lorem Ipsum.  software like Aldus PageMaker including versions of Lorem Ipsum.")
               ),
             ],
           ),
          )
        ]
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimention.width20*2.5,
              right: Dimention.width20*2.5,
              top: Dimention.height10,
              bottom: Dimention.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,iconColor: Colors.white,backGroundcolor: AppColor.mainColor,iconSize: Dimention.iconSize24,),
                BigText(text: " \$12.88 "+" 0 ",color: AppColor.mainblackColor,size: Dimention.font26,),
                AppIcon(icon: Icons.add,iconColor: Colors.white,backGroundcolor: AppColor.mainColor,iconSize: Dimention.iconSize24,),
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite,color: AppColor.mainColor),
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
        ],
      ),
    );
  }
}
