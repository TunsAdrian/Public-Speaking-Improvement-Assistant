import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder<dynamic>(
              future: DefaultAssetBundle.of(context).loadString('assets/privacy_policy.md'),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    data: snapshot.data,
                    onTapLink: (String text, String url, String title) {
                      launch('https://app-privacy-policy-generator.nisrulz.com');
                    },
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
