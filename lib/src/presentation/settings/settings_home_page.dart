import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class SettingsHomePage extends StatelessWidget {
  const SettingsHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.person_outline_rounded),
                      trailing: const Icon(Icons.chevron_right),
                      title: const Text('Account'),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.account_home);
                      },
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.remove_red_eye_outlined),
                      trailing: const Icon(Icons.chevron_right),
                      title: const Text('Appearance'),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.appearance);
                      },
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.lock_outline_rounded),
                      trailing: const Icon(Icons.chevron_right),
                      title: const Text('Terms & Conditions'),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.terms_and_conditions);
                      },
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.privacy_tip_outlined),
                      trailing: const Icon(Icons.chevron_right),
                      title: const Text('Privacy Policy'),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.privacy_policy);
                      },
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.headset_outlined),
                      trailing: const Icon(Icons.chevron_right),
                      title: const Text('Help'),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.help);
                      },
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.help_outline_outlined),
                      trailing: const Icon(Icons.chevron_right),
                      title: const Text('About'),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.about);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
