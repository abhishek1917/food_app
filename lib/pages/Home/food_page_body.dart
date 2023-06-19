import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/widget/big_text.dart';
import 'package:food_app/widget/icon_and_text_widget.dart';
import 'package:food_app/widget/small_text.dart';

import '../../utils/dimentions.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimention.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print(_currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  color: Colors.red,
          height: Dimention.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _builPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue.floor(),
          decorator: DotsDecorator(
            color: Colors.grey, // Inactive color
            activeColor:AppColor.mainColor,
          ),
        ),
        SizedBox(
          height: Dimention.height10,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimention.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular'),
              SizedBox(
                width: Dimention.width10,
              ),
              Container(
                child: BigText(text: '.',color: Colors.black26,),
              ),
              SizedBox(
                width: Dimention.width10,
              ),
              Container(
                child: SmallText(text: 'Food Pairing',),
              )
            ],
          ),
        ),
        SizedBox(
          height: Dimention.height10,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
            itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.only(left: Dimention.width20,right: Dimention.width20,bottom: Dimention.height10),
            child: Row(
              children: [
                Container(
                  width:Dimention.listviewImageSize,
                  height: Dimention.listviewImageSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimention.radius20),
                      color: Colors.white24,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/food0.png'),
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                    height: Dimention.listViewTextContSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimention.radius20),
                        bottomRight: Radius.circular(Dimention.radius20),
                      ),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: Dimention.width10,right:  Dimention.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: 'Nutritious fruite meal in china'),
                          SizedBox(
                            height: Dimention.height10,
                          ),
                          SmallText(text: 'with chinese characteristics'),
                          SizedBox(
                            height: Dimention.height10,
                          ),
                          Row(
                            children: [
                              IconAndTextWidget(
                                  icon: Icons.circle_sharp,
                                  text: 'Normal',
                                  iconcolor: AppColor.iconColor1),
                              SizedBox(
                                width: Dimention.width10,
                              ),
                              IconAndTextWidget(
                                  icon: Icons.location_on,
                                  text: '1.7 km',
                                  iconcolor: AppColor.mainColor),
                              SizedBox(
                                width:  Dimention.width10,
                              ),
                              IconAndTextWidget(
                                  icon: Icons.access_time_rounded,
                                  text: '37 min',
                                  iconcolor: AppColor.iconColor2)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        })

      ],
    );
  }

  Widget _builPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimention.pageViewContainer,
            margin: EdgeInsets.only(left: Dimention.width10, right:  Dimention.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimention.radius30),
                // color:Color(0xFF89dad0),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/food0.png'),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimention.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimention.width30, right: Dimention.width30, bottom: Dimention.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimention.radius30),
                  color: Colors.white,
                  boxShadow: [BoxShadow()]),
              child: Container(
                padding: EdgeInsets.only(left: Dimention.width15, right: Dimention.width15, top: Dimention.height15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'Chinese Side'),
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
