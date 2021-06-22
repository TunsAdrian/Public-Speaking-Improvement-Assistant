import 'package:flutter/material.dart';

mixin AlignLeadingMixin {
  Widget alignedLeading(Widget widget) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        widget,
      ],
    );
  }
}
