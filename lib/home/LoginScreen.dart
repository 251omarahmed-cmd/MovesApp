import 'package:flutter/material.dart';
import 'package:movie_app/reusable_widget/localize_%20button.dart';
import 'package:movie_app/utils/app_assets.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/app_style.dart';
import '../l10n/app_localizations.dart';
import '../reusable_widget/form _field.dart';
import '../reusable_widget/genral_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size. width;

    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.symmetric(
            vertical:width*.2,horizontal:height*.02),
        child: Column(
          children: [
            Image(
                image: AssetImage(AppAssets.logoMovies,)),
            Spacer(flex:2,),
            Form(
                key: _formKey,
                child: Column(
                  spacing:10,
                  children: [
                    // todo Input fields for "Mobile Number or Email Address"
                    AccessTextFormField(text: AppLocalizations.of(context)!.email ,
                      isPassword:false ,image: AppAssets.iconPassword,
                      controller: emailController,
                    validator: (text) {
                        if(text==null || text.isEmpty){
                          return  AppLocalizations.of(context)!.pleaseEnterMobileNumberOrEmailAddress;
                        }
                        final bool emailValid=
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_^{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(text);
                        if(!emailValid){
                          return AppLocalizations.of(context)!.pleaseEnterValidPassword;
                        }
                        return null;
                      },
                      ),
                    // todo Input fields for "Password" with a visibility toggle for the password.
                    AccessTextFormField(text:AppLocalizations.of(context)!.password,isPassword: true,
                        image:AppAssets.iconEmail,
                      controller:passwordController,
                      validator: (text) {
                        if(text==null || text.isEmpty){
                          return AppLocalizations.of(context)!.pleaseEnterPassword ;
                        }
                        if(text.length<6){
                          return AppLocalizations.of(context)!.passwordShouldBeAtLeast6Char;
                        }

                        return null;
                      },),
                    Align(alignment:Alignment.bottomRight ,
                      child: TextButton(onPressed: () {},
                        child: Text(AppLocalizations.of(context)!.forgetPassword,style: AppStyle.Regularyel14,
                        ),),
                    ),
                    //todo A blue button labeled "Login".
                    GeneralButton(text:AppLocalizations.of(context)!.login, onPressed:() {
                      if (_formKey.currentState!.validate()==true) {
                        // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      }},
                      isGoogle: false,style: AppStyle.Regulargr20,),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.dontHaveAccount,style: AppStyle.regularWH14,),
                TextButton(onPressed:() {},
                  child: Text(AppLocalizations.of(context)!.createOne,style: AppStyle.black14,),)
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
                Text(AppLocalizations.of(context)!.or,style:AppStyle.Regularyel14 ,),
                Expanded(
                  child: Divider(
                    color: AppColor.yellowColor,
                    thickness: 2, endIndent: 95, indent: 10,
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            GeneralButton(text:AppLocalizations.of(context)!.loginWithGoogle, isGoogle: true,
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed(.routeName);
              },style: AppStyle.regularGR16, ),
            Spacer(flex: 1,),
            LocalizeButton(),
          ],),
      ));
  }
}



