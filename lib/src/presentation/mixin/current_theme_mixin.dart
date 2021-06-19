import 'package:flutter/material.dart';

mixin CurrentThemeMixin {
  ThemeData getCurrentTheme(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? ThemeData.dark()
        : ThemeData.light();
  }
}
