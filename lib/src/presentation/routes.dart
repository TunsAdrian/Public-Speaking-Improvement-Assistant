import 'package:flutter/cupertino.dart';
import 'package:public_speaking_assistant/src/presentation/home.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home:(BuildContext context) {
      return const Home();
    }
  };
}
