import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/assistant_home.dart';
import 'package:public_speaking_assistant/src/presentation/settings/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const AssistantHome(),
        Container(color: Colors.blue),
        const SettingsPage(),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: (int i) async {
          setState(() => _page = i);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Assistant',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_rounded),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
