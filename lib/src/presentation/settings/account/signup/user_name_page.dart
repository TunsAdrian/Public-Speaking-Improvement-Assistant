import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/separator_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class UserNamePage extends StatelessWidget with SeparatorMixin {
  const UserNamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your name'),
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
                        decoration: const InputDecoration(
                          hintText: 'First Name',
                        ),
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        onChanged: (String value) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(firstName: value.trim()));
                        },
                        validator: (String value) {
                          if (value.length < 3) {
                            return 'Please input a longer first name';
                          }

                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Last Name',
                        ),
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        onChanged: (String value) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(lastName: value.trim()));
                        },
                        validator: (String value) {
                          if (value.length < 3) {
                            return 'Please input a longer last name';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 64),
                      ElevatedButton(
                        child: const Text('Continue'),
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            Navigator.pushNamed(context, AppRoutes.password);
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
