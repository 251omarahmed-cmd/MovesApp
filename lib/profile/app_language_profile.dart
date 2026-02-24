import 'package:flutter/foundation.dart';

class AppLanguageProvider extends ChangeNotifier {

   String appLanguage="en";
void ChangLanguage(String newLanguage){
 if( newLanguage==appLanguage){
   return;
 }
 appLanguage = newLanguage;
 notifyListeners();
}

}
