import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:public_speaking_assistant/src/init/init.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(const PublicSpeakingAssistant());
}

class PublicSpeakingAssistant extends StatefulWidget {
  const PublicSpeakingAssistant({Key key}) : super(key: key);

  @override
  _PublicSpeakingAssistantState createState() => _PublicSpeakingAssistantState();
}

class _PublicSpeakingAssistantState extends State<PublicSpeakingAssistant> {
  Future<Store<AppState>> _future;

  @override
  void initState() {
    super.initState();

    _future = init();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: _future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data;

          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Public Speaking Improvement Assistant',
              theme: ThemeData.light(),
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          return MaterialApp(
            title: 'Public Speaking Improvement Assistant',
            theme: ThemeData.light(),
            home: const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
