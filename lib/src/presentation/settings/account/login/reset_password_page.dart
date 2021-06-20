import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/current_theme_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/dialog_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/separator_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> with DialogMixin, SeparatorMixin, CurrentThemeMixin {
  final TextEditingController _email = TextEditingController();

  Future<void> _response(BuildContext context, AppAction action) async {
    if (action is ResetPasswordSuccessful) {
      await showAlertDialog(
          context, 'Reset Password', 'An email with instructions to reset your password has been sent to you');
    } else if (action is ResetPasswordError) {
      await showErrorDialog(context, 'Reset Password Error',
          'An error has occurred while sending the reset email to you.\nPlease try again later');
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reset password'),
        ),
        body: SafeArea(
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 120,
                          color: getCurrentTheme(context).scaffoldBackgroundColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: _email,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          hintText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value) {},
                        validator: (String value) {
                          if (!value.contains('@') || !value.contains('.')) {
                            return 'Please enter a valid email address';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 64),
                      ElevatedButton(
                        child: const Text('Reset Password'),
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<AppState>(context).dispatch(ResetPassword(
                              (AppAction action) {
                                _response(context, action);
                              },
                              email: _email.text,
                            ));
                          }
                        },
                      ),
                      orDivider(context),
                      TextButton(
                        child: const Text('Sign Up'),
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.signup);
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
