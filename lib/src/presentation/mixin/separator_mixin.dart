import 'package:flutter/material.dart';

mixin SeparatorMixin {
  Widget orDivider(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 35.0, right: 15.0),
            child: Divider(
              color: Theme.of(context).brightness == Brightness.light
                  ? ThemeData.dark().scaffoldBackgroundColor
                  : ThemeData.light().scaffoldBackgroundColor,
              height: 50,
            ),
          ),
        ),
        const Text('OR'),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 35.0),
            child: Divider(
              color: Theme.of(context).brightness == Brightness.light
                  ? ThemeData.dark().scaffoldBackgroundColor
                  : ThemeData.light().scaffoldBackgroundColor,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
