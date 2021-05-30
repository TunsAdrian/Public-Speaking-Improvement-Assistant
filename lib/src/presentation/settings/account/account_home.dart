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
        } else if (!user.isEmailVerified) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Account Confirmation'),
            ),
            body: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'An confirmation email has been sent to you. After confirming your email, please come back and login again.',
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ElevatedButton(
                        child: const Text('Log In'),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(const SignOut());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Account'),
            ),
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
                ElevatedButton.icon(
                  label: const Text('Download your synced speeches'),
                  icon: const Icon(Icons.cloud_download_outlined),
                  onPressed: () {
                    // todo: save the speech results from cloud to the local database
                  },
                ),
                const Divider(),
                ListTile(
                  minLeadingWidth: 110.0,
                  leading: const Text('First Name'),
                  title: Text(
                    user.firstName,
                  ),
                ),
                const Divider(),
                ListTile(
                  minLeadingWidth: 110.0,
                  leading: const Text('Last Name'),
                  title: Text(
                    user.lastName,
                  ),
                ),
                const Divider(),
                ListTile(
                  minLeadingWidth: 110.0,
                  leading: const Text('E-mail Address'),
                  title: Text(
                    user.email,
                  ),
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
