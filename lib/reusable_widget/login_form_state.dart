import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../utils/app_assets.dart';
import '../utils/app_style.dart';
import 'form _field.dart';
import 'genral_button.dart';

class LoginFormState extends StatelessWidget {
  LoginFormState({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Form(
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
        ));
  }
}
