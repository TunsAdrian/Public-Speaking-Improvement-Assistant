import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveColorAdapter.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveLanguagePair.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveSpeechResult.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveSpeechWord.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/init_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:redux/redux.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  // initialise local database
  await Hive.initFlutter();
  Hive.registerAdapter<HiveSpeechResult>(HiveSpeechResultAdapter());
  Hive.registerAdapter<HiveLanguagePair>(HiveLanguagePairAdapter());
  Hive.registerAdapter<HiveSpeechWord>(HiveSpeechWordAdapter());
  Hive.registerAdapter<Color>(HiveColorAdapter());
  await Hive.openBox<dynamic>('settings'); // open the settings box when starting the application

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
            child: ValueListenableBuilder<Box<dynamic>>(
              valueListenable: Hive.box<dynamic>('settings').listenable(),
              builder: (BuildContext context, Box<dynamic> settingsBox, Widget widget) {
                final bool darkMode = settingsBox.get('darkMode', defaultValue: false);
                final Color primaryColor = settingsBox.get('primaryColor', defaultValue: Colors.deepPurple);
                final Color accentColor = settingsBox.get('accentColor', defaultValue: Colors.deepPurpleAccent);
                final Color textButtonColor = settingsBox.get('textButtonColor', defaultValue: Colors.deepPurpleAccent);
                final Color elevatedButtonColor =
                    settingsBox.get('elevatedButtonColor', defaultValue: Colors.deepPurple);
                final Color floatingButtonColor =
                    settingsBox.get('floatingButtonColor', defaultValue: Colors.deepPurple);
                final Color toggleableActiveColor =
                    settingsBox.get('toggleableActiveColor', defaultValue: Colors.deepPurpleAccent[100]);

                return MaterialApp(
                  themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
                  theme: ThemeData.light().copyWith(
                    primaryColor: primaryColor,
                    accentColor: accentColor,
                    toggleableActiveColor: toggleableActiveColor,
                    elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                        primary: elevatedButtonColor,
                        minimumSize: const Size(150, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        primary: textButtonColor,
                      ),
                    ),
                    outlinedButtonTheme: OutlinedButtonThemeData(
                      style: OutlinedButton.styleFrom(
                        primary: textButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    floatingActionButtonTheme: FloatingActionButtonThemeData(
                      backgroundColor: floatingButtonColor,
                    ),
                  ),
                  darkTheme: ThemeData.dark().copyWith(
                    primaryColor: primaryColor,
                    accentColor: accentColor,
                    toggleableActiveColor: toggleableActiveColor,
                    elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                        primary: elevatedButtonColor,
                        minimumSize: const Size(150, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        primary: textButtonColor,
                      ),
                    ),
                    outlinedButtonTheme: OutlinedButtonThemeData(
                      style: OutlinedButton.styleFrom(
                        primary: textButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    floatingActionButtonTheme: FloatingActionButtonThemeData(
                      backgroundColor: floatingButtonColor,
                    ),
                  ),
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

          return ValueListenableBuilder<Box<dynamic>>(
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
