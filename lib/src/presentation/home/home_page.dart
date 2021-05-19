import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/assistant/assistant_home_page.dart';
import 'package:public_speaking_assistant/src/presentation/library/library_home_page.dart';
import 'package:public_speaking_assistant/src/presentation/settings/settings_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // get all of the saved speech results when opening the application
    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetSpeechResultList());
  }

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const AssistantHomePage(),
        const LibraryHomePage(),
        const SettingsHomePage(),
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
