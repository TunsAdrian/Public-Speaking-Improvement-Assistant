import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/models/speech_result/hive_model/hiveSpeechResult.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/init_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:redux/redux.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  // initialise local database
  await Hive.initFlutter();
  await Hive.openBox<dynamic>('settings'); // open the settings box when starting the application
  Hive.registerAdapter(HiveSpeechResultAdapter());

  runApp(const PublicSpeakingAssistant());
}

class PublicSpeakingAssistant extends StatefulWidget {
  const PublicSpeakingAssistant({Key key}) : super(key: key);

  @override
  _PublicSpeakingAssistantState createState() => _PublicSpeakingAssistantState();
}

class _PublicSpeakingAssistantState extends State<PublicSpeakingAssistant> with InitMixin<PublicSpeakingAssistant> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data;

          return StoreProvider<AppState>(
            store: store,
            // ignore: always_specify_types
            child: ValueListenableBuilder(
              valueListenable: Hive.box<dynamic>('settings').listenable(),
              builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
                final bool darkMode = settingsBox.get('darkMode', defaultValue: false);
                return MaterialApp(
                  themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
                  darkTheme: ThemeData.dark(),
                  title: 'Public Speaking Improvement Assistant',
                  routes: AppRoutes.routes,
                );
              },
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          // ignore: always_specify_types
          return ValueListenableBuilder(
            valueListenable: Hive.box<dynamic>('settings').listenable(),
            builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
              final bool darkMode = settingsBox.get('darkMode', defaultValue: false);
              return MaterialApp(
                themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
                darkTheme: ThemeData.dark(),
                title: 'Public Speaking Improvement Assistant',
                home: const Scaffold(
                  body: Center(
                    child: FlutterLogo(),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
