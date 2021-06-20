import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/current_theme_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/separator_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class SignupPage extends StatelessWidget with SeparatorMixin, CurrentThemeMixin {
  const SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
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
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        hintText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(email: value.trim()));
                      },
                      validator: (String value) {
                        if (value.contains(' ') || !value.contains('@') || !value.contains('.')) {
                          return 'Please enter a valid email address';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 64),
                    ElevatedButton(
                      child: const Text('Continue'),
                      onPressed: () {
                        if (Form.of(context).validate()) {
                          Navigator.pushNamed(context, AppRoutes.user_name);
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
    );
  }
}
