import 'package:flutter/cupertino.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/detailed_speech_result_page.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/speech_record/speech_result_page.dart';
import 'package:public_speaking_assistant/src/presentation/home.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/speech_record/recording_page.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/filler_words/set_filler_words_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/account_home.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/login/reset_password_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/signup/password_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/signup/signup_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/signup/user_name_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';

  // voice assistant routes
  static const String speech_record = '/speech_record';
  static const String speech_result = '/speech_result';
  static const String detailed_speech_result = '/detailed_speech_result';
  static const String set_filler_words = '/set_filler_words';

  // settings routes
  static const String account_home = '/account_home';

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
      return const RecordingPage();
    },
    set_filler_words: (BuildContext context) {
      return const SetFillerWords();
    },
    speech_result: (BuildContext context) {
      return const SpeechResultPage();
    },
    detailed_speech_result: (BuildContext context) {
      return const DetailedSpeechResultPage();
    },

    // settings routes
    account_home: (BuildContext context) {
      return const AccountHome();
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
