import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/assistant_home_page.dart';
import 'package:public_speaking_assistant/src/presentation/library/library_home_page.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/current_theme_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/settings/settings_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with CurrentThemeMixin {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 44.0),
          behavior: SnackBarBehavior.floating,
          content: const Text('Tap again to exit the application'),
        ),
        child: <Widget>[
          const AssistantHomePage(),
          const LibraryHomePage(),
          const SettingsHomePage(),
        ][_page],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        textColor: Theme.of(context).primaryColor,
        circleColor: Theme.of(context).primaryColor,
        activeIconColor: getCurrentTheme(context).iconTheme.color,
        onTabChangedListener: (int i) async {
          setState(() => _page = i);
        },
        tabs: <TabData>[
          TabData(
            iconData: Icons.home,
            title: 'Assistant',
          ),
          TabData(
            iconData: Icons.library_books_rounded,
            title: 'Library',
          ),
          TabData(
            iconData: Icons.settings_rounded,
            title: 'Settings',
          )
        ],
      ),
    );
  }
}
