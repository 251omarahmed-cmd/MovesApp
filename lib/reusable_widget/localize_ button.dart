import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_assets.dart';
import 'package:movie_app/utils/app_color.dart';

class LocalizeButton extends StatefulWidget {
   LocalizeButton({super.key});

  @override
  State<LocalizeButton> createState() => _LocalizeButtonState();
}

class _LocalizeButtonState extends State<LocalizeButton> {
   List<bool> isSelected=[false,false];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(isSelected: isSelected,onPressed: (index) {
        for(int i = 0; i < isSelected.length; i++){
          isSelected[i] = i == index;
          setState(() {
          });
        }
      },borderWidth:3,
        borderColor: AppColor.yellowColor ,
        borderRadius: BorderRadius.circular(30),
        selectedColor:AppColor.yellowColor,
        fillColor:AppColor.yellowColor ,
        children:[
          CircleAvatar(
            radius: 15,
            child: Image.asset(AppAssets.languageEN),),
          CircleAvatar(
            radius: 15,
            child: Image.asset(AppAssets.languageAR),),
        ],),
    );
  }
}
