import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Mixin used for reusing the error dialog in case of login/signup errors
mixin DialogMixin {
  Future<void> showErrorDialog(BuildContext context, String title, Object error) {
    if (Theme.of(context).platform == TargetPlatform.android) {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text('$error'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    } else {
      return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text('$error'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}
