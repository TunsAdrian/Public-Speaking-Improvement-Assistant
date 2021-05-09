import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

ThemeData darkTheme = ThemeData.dark();
ThemeData lightTheme = ThemeData.light();
enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;
  ThemeType _themeType = ThemeType.Dark;

  void toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      currentTheme = darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}

class AppearancePage extends StatelessWidget {
  const AppearancePage({Key key}) : super(key: key);

  // todo: implement appearance change with redux, instead of provider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appearance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.lightbulb_outline),
              onPressed: () {
                Provider.of<ThemeModel>(context, listen: false).toggleTheme();
              },
            )
          ],
        ),
      ),
    );
  }
}
