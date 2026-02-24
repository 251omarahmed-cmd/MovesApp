// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get forgetPassword => 'Forget Password?';

  @override
  String get login => 'Login';

  @override
  String get dontHaveAccount => 'Don’t Have Account?';

  @override
  String get createOne => 'Create One';

  @override
  String get or => 'OR';

  @override
  String get loginWithGoogle => 'Login With Google';

  @override
  String get pleaseEnterMobileNumberOrEmailAddress =>
      'Please enter Mobile Number or Email Address';

  @override
  String get pleaseEnterValidPassword => 'Please enter Valid Password';

  @override
  String get pleaseEnterPassword => 'Please Enter Password';

  @override
  String get passwordShouldBeAtLeast6Char =>
      'Password should be at least 6 char';
}
