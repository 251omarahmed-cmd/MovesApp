import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/app_style.dart';
class AccessTextFormField extends StatelessWidget {
  String text;
  bool isPassword;
  String image;

  AccessTextFormField({super.key,required this.text,required this.isPassword,
    required this.image});

  @override
  Widget build(BuildContext context) {

    return TextFormField(

      validator: (value) {
        if(value==null || value.isEmpty){
          return 'Please enter some text' ;
        }
        return null;
      },
      cursorColor: Colors.blue,
      decoration: InputDecoration(
         prefixIcon: Image.asset(image),
        suffixIcon: isPassword? IconButton(
        onPressed: () {},
        icon:Icon(Icons.visibility_off,color: AppColor.whiteColor,) ):null,
        hintText: text,
        filled: true,
        fillColor:AppColor.grayColor ,
        hintStyle: AppStyle.regular16,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 2,color:AppColor.darkColor, )),
          enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(width: 2,color:AppColor.darkColor,),
              borderRadius:BorderRadius.circular(16) ),
          focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(width: 2,color:AppColor.darkColor,)
              ,borderRadius:BorderRadius.circular(16) ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.red ,width: 2),
              borderRadius: BorderRadius.circular(16))
    ),);

  }
}
