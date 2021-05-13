import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/models/speech_result/hive_model/hiveSpeechResult.dart';
import 'package:public_speaking_assistant/src/presentation/mixin/init_mixin.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:public_speaking_assistant/src/presentation/settings/test_theme.dart';
import 'package:redux/redux.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  // initialise local database
  await Hive.initFlutter();
  Hive.registerAdapter(HiveSpeechResultAdapter());

  runApp(
    ChangeNotifierProvider<ThemeModel>(
      create: (BuildContext context) => ThemeModel(),
      child: const PublicSpeakingAssistant(),
    ),
  );
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
            child: MaterialApp(
              title: 'Public Speaking Improvement Assistant',
              theme: Provider.of<ThemeModel>(context).currentTheme,
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          return MaterialApp(
            title: 'Public Speaking Improvement Assistant',
            theme: Provider.of<ThemeModel>(context).currentTheme,
            home: const Scaffold(
              body: Center(
                child: FlutterLogo(),
              ),
            ),
          );
        }
      },
    );
  }
}
