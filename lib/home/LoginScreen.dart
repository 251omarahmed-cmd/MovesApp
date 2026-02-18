import 'package:flutter/material.dart';
import 'package:movie_app/reusable_widget/localize_%20button.dart';
import 'package:movie_app/reusable_widget/textformfield.dart';
import 'package:movie_app/utils/app_assets.dart';
import 'package:movie_app/reusable_widget/app_button.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/app_style.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .stretch,
        children: [
          Image.asset(AppAssets.logoMovies),
          TextForm(text: "Email",image:AppAssets.iconEmail ,),
          TextForm(text: "Password", image: AppAssets.iconPassword ,),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(onPressed: () {},
            child: Text("Forget Password ?",style: AppStyle.regular14,),),
          ),
          AppButton(text: "Login",
              onPressed: () {},
           style:AppStyle.regular20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t Have Account ?",style: AppStyle.regularWH14,),
              TextButton(onPressed:() {},
              child: Text("Create One",style: AppStyle.black14,),)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: AppColor.yellowColor,
                  thickness: 2, indent: 95, endIndent: 10,),
              ),
              Text("OR",style:AppStyle.regular14 ,),
              Expanded(
                child: Divider(
                  color: AppColor.yellowColor,
                  thickness: 2, endIndent: 95, indent: 10,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(onPressed: () {},
                child:
                Row(
                  spacing: 10,
                  mainAxisAlignment:MainAxisAlignment .center,
                  children: [
                     SizedBox(
                         height:25 , width: 25,
                         child: Image.asset(AppAssets.iconGoogle,
                             fit:BoxFit.contain, )
                     ),
                  Text("Login With Google",style: AppStyle.regularGR16, )
                ],)
               ),),
          LocalizeButton(),

        ],
      ),
    );
  }
}

