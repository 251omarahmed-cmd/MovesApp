import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/home/LoginScreen.dart';
import 'package:movie_app/profile/app_language_profile.dart';
import 'package:movie_app/utils/app_routes.dart';
import 'package:movie_app/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );


  runApp(
      ChangeNotifierProvider(
    create:(context)=>AppLanguageProvider(),
      child:  MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var languageProvider=Provider.of<AppLanguageProvider>(context);

    return MaterialApp(

      initialRoute:AppRoutes.loginRouteName ,
      routes: {
        AppRoutes.loginRouteName:(context)=>LoginScreen(),
      },
     themeMode:ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      locale:Locale(languageProvider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );


  }
}
