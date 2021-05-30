import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class SettingsHomePage extends StatelessWidget {
  const SettingsHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: always_specify_types
    return ValueListenableBuilder(
      valueListenable: Hive.box<dynamic>('settings').listenable(),
      builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
        final bool darkMode = settingsBox.get('darkMode', defaultValue: false);

        return Scaffold(
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
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.lock_outline_rounded),
                        trailing: const Icon(Icons.chevron_right),
                        title: const Text('Privacy & Security'),
                        onTap: () {},
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.headset_outlined),
                        trailing: const Icon(Icons.chevron_right),
                        title: const Text('Help'),
                        onTap: () {},
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.help_outline_outlined),
                        trailing: const Icon(Icons.chevron_right),
                        title: const Text('About'),
                        onTap: () {},
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.remove_red_eye_outlined),
                        title: const Text('Dark Theme'),
                        trailing: Switch(
                          value: darkMode,
                          onChanged: (bool value) {
                            settingsBox.put('darkMode', !darkMode);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
