
import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_assets.dart';
import 'package:movie_app/utils/app_color.dart' show AppColor;
import 'package:movie_app/utils/app_style.dart';

class TextForm extends StatelessWidget {
  String text;
  String image;


   TextForm({super.key,required this.image
     ,required this.text,});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(

        decoration:InputDecoration(
            filled: true,
            fillColor: AppColor.grayColor,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width:2,)),
            hintText:text ,hintStyle:AppStyle.regular16 ,
            prefixIcon:  Image.asset(image),

         ) ,
          ),
    );
  }
}
