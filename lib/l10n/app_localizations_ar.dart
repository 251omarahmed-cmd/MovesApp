// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get forgetPassword => '?نسيت كلمة المرور';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';

  @override
  String get createOne => 'إنشاء حساب';

  @override
  String get or => 'أو';

  @override
  String get loginWithGoogle => 'تسجيل الدخول باستخدام جوجل';

  @override
  String get pleaseEnterMobileNumberOrEmailAddress =>
      'الرجاء إدخال رقم الهاتف أو البريد الإلكتروني ';

  @override
  String get pleaseEnterValidPassword => 'الرجاء إدخال كلمة مرور صحيحة';

  @override
  String get pleaseEnterPassword => 'الرجاء إدخال كلمة المرور';

  @override
  String get passwordShouldBeAtLeast6Char =>
      'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل';
}
