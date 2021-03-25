import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/auth/index.dart';
import 'package:public_speaking_assistant/src/models/auth/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/login/login_page.dart';

class AccountHome extends StatelessWidget {
  const AccountHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        if (user == null) {
          return const LoginPage();
        } else {
          return Scaffold(
            body: Center(
              child: IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'),
                    ),
                    const SizedBox(height: 36.0),
                    ElevatedButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(const SignOut());
                      },
                      child: const Text('Log out'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
