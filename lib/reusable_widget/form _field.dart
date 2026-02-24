import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/app_style.dart';
class AccessTextFormField extends StatefulWidget {
  String text;
  bool isPassword;
  String image;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  AccessTextFormField( {super.key,required this.text,required this.isPassword,
    required this.image,this.controller,
    this.validator,

    });

  @override
  State<AccessTextFormField> createState() => _AccessTextFormFieldState();
}

class _AccessTextFormFieldState extends State<AccessTextFormField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = !_obscureText;
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: _obscureText,
      style:AppStyle.Regularwh16 ,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
         prefixIcon: Image.asset(widget.image),
        suffixIcon:
        widget.isPassword?
        IconButton(
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        icon:Icon(
          _obscureText?Icons.visibility_off
              :Icons.visibility,color: AppColor.whiteColor,)):null,
        hintText: widget.text,
          hintStyle: AppStyle.Regularwh16,
        filled: true,
        fillColor:AppColor.grayColor ,
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
              borderRadius: BorderRadius.circular(16)),

    ),);

  }

}
