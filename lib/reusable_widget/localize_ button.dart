import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_assets.dart';
import 'package:movie_app/utils/app_color.dart';

class LocalizeButton extends StatefulWidget {

  LocalizeButton( {super.key,});
  @override
  State<LocalizeButton> createState() => _LocalizeButtonState();
}
class _LocalizeButtonState extends State<LocalizeButton> {

  @override
  Widget build(BuildContext context) {
     bool isEnSelected = languageProvider.appLanguage == "en";
    bool isArSelected = languageProvider.appLanguage == "ar";
    var width=MediaQuery.of(context).size. width;
    var height=MediaQuery.of(context).size.height;
    return Container(width: width*.32,height: height*.058,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(30),
          border: Border.all(width: 3,color: AppColor.yellowColor,) ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
           spacing:width*.1,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: () {
                
              },
                child: Container(
                    decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:isEnSelected? Border.all(width: 4,color: AppColor.yellowColor):null,
                ), child: CircleAvatar(
                    radius: 20,
                    child: Image.asset(AppAssets.languageEN) ),
                ),
              ),
              InkWell(onTap: () {
         
              },
                child: Container(
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                    border:isArSelected? Border.all(width: 4,color: AppColor.yellowColor):null,
                  ),child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(AppAssets.languageAR),),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
