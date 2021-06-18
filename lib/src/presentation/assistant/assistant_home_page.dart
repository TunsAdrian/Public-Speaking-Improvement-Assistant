import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';
import 'package:redux/redux.dart';

class AssistantHomePage extends StatefulWidget {
  const AssistantHomePage({Key key}) : super(key: key);

  @override
  _AssistantHomePageState createState() => _AssistantHomePageState();
}

class _AssistantHomePageState extends State<AssistantHomePage> {
  Store<AppState> store;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(const ListenForInternetStatus());
    });
  }

  @override
  void dispose() {
    store.dispatch(const StopListeningForInternetStatus());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Public Speaking Assistant'),
          centerTitle: true,
        ),
        body: ConnectivityContainer(
          builder: (BuildContext context, bool hasInternetConnection) {
            return Center(
              child: IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: !hasInternetConnection
                          ? () {
                              const SnackBar snackBarAccountCreationSuccess = SnackBar(
                                content: Text(
                                    'You need a stable internet connection in order to use the public speaking assistant'),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(snackBarAccountCreationSuccess);
                            }
                          : null,
                      child: ElevatedButton(
                        onPressed: hasInternetConnection
                            ? () {
                                Navigator.pushNamed(context, AppRoutes.speech_record);
                                // Navigator.pushNamed(context, AppRoutes.speech_result);
                              }
                            : null,
                        child: const Text('Speech Rehearsal'),
                      ),
                    ),
                    const SizedBox(height: 36.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.set_filler_words);
                      },
                      child: const Text('Set Filler Words'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
