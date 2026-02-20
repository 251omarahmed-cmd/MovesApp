import 'package:flutter/material.dart';
import 'package:movie_app/reusable_widget/localize_%20button.dart';

import 'package:movie_app/utils/app_assets.dart';

import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/app_style.dart';

import '../reusable_widget/form _field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size. width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(
              vertical:width*.2,horizontal:height*.02),
          child: Column(
            children: [
              Image(image: AssetImage(AppAssets.logoMovies)),
              Spacer(flex:2,),
              Form(
                  key: _formKey,
                  child: Column(
                    spacing: 10,
                    children: [
                      // todo Input fields for "Mobile Number or Email Address"
                      AccessTextFormField(text:"Email" ,
                        isPassword:false ,image: AppAssets.iconPassword),
                      // todo Input fields for "Password" with a visibility toggle for the password.
                      AccessTextFormField(text:"Password",isPassword: true,
                          image:AppAssets.iconEmail),
                      Align(alignment:Alignment.bottomRight ,
                        child: TextButton(onPressed: () {},
                          child: Text("Forget Password ?",style: AppStyle.regular14,
                          ),),
                      ),
                      //todo A blue button labeled "Login".
                      SizedBox(
                        width: .infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                              }
                            }
                            ,style:ElevatedButton.styleFrom(
                            padding:EdgeInsets.symmetric(vertical: 16) ,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(16))),
                            child: Text("Login",
                              style: AppStyle.regular20,)),
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t Have Account ?",style: AppStyle.regularWH14,),
                  TextButton(onPressed:() {},
                    child: Text("Create One",style: AppStyle.black14,),)
                ],
              ),
              Spacer(flex: 1,),
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
              Spacer(flex: 1,),
              SizedBox(
                width: .infinity,
                child: ElevatedButton(
                    onPressed: () {
                        // Navigator.of(context).pushReplacementNamed(.routeName);
                      }
                    ,style:ElevatedButton.styleFrom(
                    padding:EdgeInsets.symmetric(vertical: 16) ,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))),
                    child:Row(
                      mainAxisAlignment: .center,
                      spacing: width*.01,
                      children: [
                        Image.asset(AppAssets.iconGoogle,),
                        Text("Login With Google",style: AppStyle.regularGR16,) ,
                      ],)
                   ),
              ),
              Spacer(flex: 1,),
              LocalizeButton(),
            ],),
        )));
  }
}



