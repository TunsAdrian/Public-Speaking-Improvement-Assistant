import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/auth/index.dart';
import 'package:public_speaking_assistant/src/models/auth/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/align_leading_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/current_theme_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/dialog_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/settings/account/login/login_page.dart';

class AccountHomePage extends StatefulWidget {
  const AccountHomePage({Key key}) : super(key: key);

  @override
  _AccountHomePageState createState() => _AccountHomePageState();
}

class _AccountHomePageState extends State<AccountHomePage> with DialogMixin, CurrentThemeMixin, AlignLeadingMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _response(AppAction action) async {
    if (action is DeleteUserAccountSuccessful) {
      await showAlertDialog(_scaffoldKey.currentContext, 'Account Successfully Deleted',
          'Your account and all associated has been successfully removed');
    } else if (action is DeleteUserAccountError) {
      await showErrorDialog(_scaffoldKey.currentContext, 'Please Login Again',
          'You will need to login again in order to delete your account and data');

      StoreProvider.of<AppState>(_scaffoldKey.currentContext).dispatch(const SignOut());
    } else if (action is SaveSyncedResultsLocallySuccessful) {
      final SnackBar snackBarSyncResultSuccess = SnackBar(
        margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
        behavior: SnackBarBehavior.floating,
        content: const Text('Your speeches were successfully downloaded and synced'),
      );

      ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(snackBarSyncResultSuccess);
    } else if (action is SaveSyncedResultsLocallyError) {
      final SnackBar snackBarSyncResultError = SnackBar(
        margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
        behavior: SnackBarBehavior.floating,
        content: const Text('An error has occurred while syncing your speeches'),
      );

      ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(snackBarSyncResultError);
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
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'An confirmation email has been sent to you. After confirming your email, please come back and login again.',
                    style: Theme.of(context).textTheme.headline6,
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
                          _showDeleteAccountDialog();
                        },
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 68),
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
                          child: Text(
                            user.lastName[0].toUpperCase() + user.firstName[0].toUpperCase(),
                            style: TextStyle(
                              fontSize: 42,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 68),
                        ElevatedButton.icon(
                          label: const Text('Download your synced speeches'),
                          icon: const Icon(Icons.cloud_download_outlined),
                          onPressed: () {
                            if (syncedSpeechResultsList.isEmpty) {
                              final SnackBar snackBarNoSyncedResults = SnackBar(
                                margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                behavior: SnackBarBehavior.floating,
                                content: const Text('No synced speeches were found'),
                              );

                              ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(snackBarNoSyncedResults);
                            } else {
                              StoreProvider.of<AppState>(context).dispatch(SaveSyncedResultsLocally(
                                (AppAction action) {
                                  _response(action);
                                },
                                userSpeechResults: syncedSpeechResultsList,
                              ));
                            }
                          },
                        ),
                        const SizedBox(height: 30),
                        ListTile(
                          minLeadingWidth: 110.0,
                          leading: alignedLeading(const Text('First Name')),
                          title: Text(
                            user.firstName,
                          ),
                        ),
                        const Divider(thickness: 1),
                        ListTile(
                          minLeadingWidth: 110.0,
                          leading: alignedLeading(const Text('Last Name')),
                          title: Text(
                            user.lastName,
                          ),
                        ),
                        const Divider(thickness: 1),
                        ListTile(
                          minLeadingWidth: 110.0,
                          leading: alignedLeading(const Text('E-mail Address')),
                          title: Text(
                            user.email,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
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
                ),
              );
            },
          );
        }
      },
    );
  }

  Future<void> _showDeleteAccountDialog() async {
    return showDialog(
      context: _scaffoldKey.currentContext,
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
                  _response(action);
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
