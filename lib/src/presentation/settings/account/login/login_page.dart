import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/current_theme_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/dialog_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/separator_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin, SeparatorMixin, CurrentThemeMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _hidePassword = true;

  void _response(AppAction action) {
    if (action is LoginError) {
      showErrorDialog(context, 'Login error', action.error);
    } else if (action is SignUpWithGoogleError) {
      showErrorDialog(context, 'Google error', action.error);
    } else if (action is LoginSuccessful || action is SignUpWithGoogleSuccessful) {
      StoreProvider.of<AppState>(context).dispatch(const GetSyncedSpeechResults());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
                        if (value.contains(' ') || !value.contains('@') || !value.contains('.')) {
                          return 'Please enter a valid email address';
                        }

                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _password,
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
                      onChanged: (String value) {},
                      validator: (String value) {
                        if (value.length < 6) {
                          return 'Please enter a valid password';
                        }

                        return null;
                      },
                    ),
                    ButtonBar(
                      children: <Widget>[
                        TextButton(
                          child: const Text('Forgot password?'),
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.reset_password);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Log In'),
                          onPressed: () {
                            if (Form.of(context).validate()) {
                              StoreProvider.of<AppState>(context).dispatch(Login(
                                email: _email.text.trim(),
                                password: _password.text,
                                response: _response,
                              ));
                            }
                          },
                        ),
                        orDivider(context),
                        ElevatedButton(
                          child: const Text('Sign in with Google'),
                          onPressed: () {
                            StoreProvider.of<AppState>(context).dispatch(SignUpWithGoogle(_response));
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 64),
                    TextButton(
                      child: const Text('Sign Up'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.signup);
                      },
                    ),
                    const Divider(thickness: 1),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By creating an account, you are agreeing to our\n',
                        style: Theme.of(context).textTheme.bodyText1,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: const TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, AppRoutes.terms_and_conditions);
                              },
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy!',
                            style: const TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, AppRoutes.privacy_policy);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
