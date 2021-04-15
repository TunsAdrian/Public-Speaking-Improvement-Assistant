import 'package:flutter/cupertino.dart';
import 'package:public_speaking_assistant/src/presentation/home.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/test/recording_page.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/set_words_db.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/account_home.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/login/reset_password_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/signup/password_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/signup/signup_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/signup/user_name_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/test_theme.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';

  // voice assistant routes
  static const String speech_record = '/speech_record';
  static const String set_words_db = '/set_words_db';

  // settings routes
  static const String account_home = '/account_home';
  static const String appearance_change = '/appearance_change';

  // user account routes
  static const String signup = '/signup';
  static const String user_name = '/user_name';
  static const String password = '/password';
  static const String reset_password = '/reset_password';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },

    // voice assistant routes
    speech_record: (BuildContext context) {
      return const SpeechScreen();
    },
    set_words_db: (BuildContext context) {
      return const SetWordsDB();
    },

    // settings routes
    account_home: (BuildContext context) {
      return const AccountHome();
    },
    appearance_change: (BuildContext context) {
      return const AppearancePage();
    },

    // user account routes
    signup: (BuildContext context) {
      return const SignupPage();
    },
    user_name: (BuildContext context) {
      return const UserNamePage();
    },
    password: (BuildContext context) {
      return const PasswordPage();
    },
    reset_password: (BuildContext context) {
      return const ResetPasswordPage();
    },
  };
}
