

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/dimentions.dart';
import 'package:food_app/widget/app_icon.dart';
import 'package:food_app/widget/small_text.dart';

import '../utils/colors.dart';

class ExpendableTextWidget extends StatefulWidget {
  final String text;
  const ExpendableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpendableTextWidget> createState() => _ExpendableTextWidgetState();
}

class _ExpendableTextWidgetState extends State<ExpendableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool HiddenText=true;
  double textHeight= Dimention.screenHeight/5;

  @override
  void initState() {
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf='';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color: AppColor.paraColor,text: firstHalf,size:Dimention.font16):Column(
        children: [
          SmallText(color: AppColor.paraColor, size:Dimention.font16,text: HiddenText?(firstHalf+'...'):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              HiddenText=!HiddenText;
              setState(() {

              });
            },
            child: Row(
              children: [
                SmallText(text: HiddenText?"Show More":"Show less",color:AppColor.mainColor),
                Icon(HiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColor.mainColor,)
              ],
            ),
          )
        ],
      ),
      );
  }
}
