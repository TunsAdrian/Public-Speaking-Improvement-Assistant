import 'package:flutter/material.dart';

class SetWordsDB extends StatelessWidget {
  const SetWordsDB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go Back'),
      ),
    );
  }
}
