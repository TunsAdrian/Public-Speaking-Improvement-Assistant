import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/auth/index.dart';
import 'package:public_speaking_assistant/src/models/auth/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/dialog_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/login/login_page.dart';

class AccountHome extends StatefulWidget {
  const AccountHome({Key key}) : super(key: key);

  @override
  _AccountHomeState createState() => _AccountHomeState();
}

class _AccountHomeState extends State<AccountHome> with DialogMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _response(BuildContext context, AppAction action) async {
    if (action is DeleteUserAccountSuccessful) {
      await showAlertDialog(_scaffoldKey.currentContext, 'Account Successfully Deleted',
          'Your account and all associated data were successfully removed');
    } else if (action is DeleteUserAccountError) {
      await showErrorDialog(
          context, 'Please Login Again', 'You will need to login again in order to delete your account and data');

      StoreProvider.of<AppState>(_scaffoldKey.currentContext).dispatch(const SignOut());
    }
  }

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
          return SyncedSpeechResultsContainer(
            builder: (BuildContext context, List<SpeechResult> syncedSpeechResultsList) {
              return ScaffoldMessenger(
                child: Scaffold(
                  key: _scaffoldKey,
                  appBar: AppBar(
                    title: const Text('Account'),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.delete_forever),
                        onPressed: () {
                          _showDeleteAccountDialog(context);
                        },
                      ),
                    ],
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
                          StoreProvider.of<AppState>(context).dispatch(SaveSyncedResultsLocally(
                            userSpeechResults: syncedSpeechResultsList,
                          ));
                          const SnackBar snackBarAccountCreationSuccess = SnackBar(
                            content: Text('Your speeches were successfully downloaded and synced'),
                            duration: Duration(seconds: 2),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBarAccountCreationSuccess);
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
                ),
              );
            },
          );
        }
      },
    );
  }

  Future<void> _showDeleteAccountDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16.0),
          title: const Text('Delete Account'),
          content: const Text('Are you sure you want to delete your account and all associated data?'),
          actions: <Widget>[
            TextButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.pop(context);
                }),
            OutlinedButton(
              child: const Text('OK'),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(DeleteUserAccount((AppAction action) {
                  _response(context, action);
                }));
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
