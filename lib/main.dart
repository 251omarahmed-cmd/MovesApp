import 'package:flutter/material.dart';
import 'package:movie_app/home/LoginScreen.dart';
import 'package:movie_app/utils/app_routes.dart';
import 'package:movie_app/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:AppRoutes.loginRouteName ,
      routes: {
        AppRoutes.loginRouteName:(context)=>LoginScreen(),


      },
     themeMode:ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      // locale: Locale("en"),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,





    );


  }

}
