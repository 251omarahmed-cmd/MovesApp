import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
class GeneralButton extends StatelessWidget {
   GeneralButton({super.key,required this.text
     ,required this.onPressed,
     required this.isGoogle,required this.style});
 String text;
 VoidCallback onPressed;
 bool isGoogle;
   TextStyle style;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size. width;
    return  SizedBox(
      width:double.infinity,
      child: ElevatedButton(
          onPressed:  onPressed
          ,style:ElevatedButton.styleFrom(
          padding:EdgeInsets.symmetric(vertical: 16) ,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16))),
          child:Row(
           mainAxisAlignment:MainAxisAlignment.center,
           children: [
              if (isGoogle)...[
               Image.asset(AppAssets.iconGoogle,), SizedBox(width:width*.01 ,),],
              Text(text,style:style ,)] ,
           )
      ),
    );
  }
}
