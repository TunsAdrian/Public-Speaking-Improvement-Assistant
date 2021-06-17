import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/dialog_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/separator_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> with DialogMixin, SeparatorMixin {
  bool _hidePassword = true;

  Future<void> _response(BuildContext context, AppAction action) async {
    if (action is SignupSuccessful) {
      const SnackBar snackBarAccountCreationSuccess = SnackBar(
        content: Text('Your account was successfully created'),
        duration: Duration(seconds: 2),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBarAccountCreationSuccess);
      Navigator.popUntil(context, ModalRoute.withName(AppRoutes.account_home));
    } else if (action is SignupError) {
      showErrorDialog(context, 'Signup error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 120,
                          color: Theme.of(context).brightness == Brightness.light
                              ? ThemeData.dark().scaffoldBackgroundColor
                              : ThemeData.light().scaffoldBackgroundColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _hidePassword,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.vpn_key_outlined),
                          suffix: GestureDetector(
                            child: _hidePassword
                                ? const Icon(Icons.remove_red_eye_rounded)
                                : const Icon(Icons.remove_red_eye_outlined),
                            onTap: () {
                              setState(() {
                                _hidePassword = !_hidePassword;
                              });
                            },
                          ),
                          hintText: 'Password',
                        ),
                        onChanged: (String value) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(password: value));
                        },
                        validator: (String value) {
                          if (value.length < 6) {
                            return 'Please choose a better password';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 64),
                      ElevatedButton(
                        child: const Text('Sign Up'),
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<AppState>(context).dispatch(Signup((AppAction action) {
                              _response(context, action);
                            }));
                          }
                        },
                      ),
                      orDivider(context),
                      TextButton(
                        child: const Text('Go to Log In'),
                        onPressed: () {
                          Navigator.popUntil(context, ModalRoute.withName(AppRoutes.account_home));
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
