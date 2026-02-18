import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_color.dart';

class AppTheme {

  static final ThemeData  darkTheme=ThemeData(
    scaffoldBackgroundColor:AppColor.darkColor ,
    elevatedButtonTheme: ElevatedButtonThemeData(

        style: ButtonStyle(backgroundColor:
        MaterialStateProperty.all(AppColor.yellowColor),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius:BorderRadiusGeometry.circular(15) )),
           maximumSize:MaterialStatePropertyAll(Size(200,60)),
           minimumSize: MaterialStatePropertyAll(Size(100,40)),





    )

    )
    
  );


}