import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder<dynamic>(
              future: DefaultAssetBundle.of(context).loadString('assets/help.md'),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    data: snapshot.data,
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
