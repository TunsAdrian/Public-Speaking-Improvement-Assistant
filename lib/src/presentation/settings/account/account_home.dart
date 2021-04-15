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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                if (user.photoUrl != null)
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(user.photoUrl),
                  )
                else
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey.shade900,
                    child: Text(
                      user.lastName[0].toUpperCase(),
                      style: const TextStyle(fontSize: 36),
                    ),
                  ),
                const Spacer(),
                const Divider(),
                ListTile(
                  leading: const Text('First Name'),
                  trailing: const Icon(Icons.chevron_right),
                  title: Text(
                    user.firstName,
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Text('Last Name'),
                  trailing: const Icon(Icons.chevron_right),
                  title: Text(
                    user.lastName,
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Text('E-mail Address'),
                  trailing: const Icon(null),
                  title: Text(
                    user.email,
                    textAlign: TextAlign.end,
                  ),
                  enabled: false,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(const SignOut());
                  },
                  child: const Text(
                    'Log out',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
