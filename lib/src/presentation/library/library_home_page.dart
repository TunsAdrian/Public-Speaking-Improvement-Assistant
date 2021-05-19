import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/containers/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class LibraryHomePage extends StatefulWidget {
  const LibraryHomePage({Key key}) : super(key: key);

  @override
  _LibraryHomePageState createState() => _LibraryHomePageState();
}

class _LibraryHomePageState extends State<LibraryHomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Library'),
          centerTitle: true,
        ),
        body: SavedSpeechResultsContainer(
          builder: (BuildContext context, List<SpeechResult> speechResultList) {
            if (speechResultList != null && speechResultList.isNotEmpty) {
              return Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: speechResultList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final SpeechResult speechResult = speechResultList[index];
                        return Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.startToEnd,
                          resizeDuration: const Duration(milliseconds: 10),
                          background: Container(
                            color: Colors.red,
                            margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                            child: const ListTile(
                              leading: Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Delete',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          onDismissed: (DismissDirection direction) {
                            StoreProvider.of<AppState>(context).dispatch(RemoveSpeechResult(speechResult));

                            final SnackBar snackBarNameSpeech = SnackBar(
                              content: const Text('Speech entry removed'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(SaveSpeechResult(speechResult: speechResult));
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBarNameSpeech);
                          },
                          child: Card(
                            child: ListTile(
                              leading: const Icon(Icons.record_voice_over_outlined),
                              title: Text(
                                speechResult.speechName,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text(
                                speechResult.speechWords.take(20).join(' '),
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.cloud_upload_outlined),
                                onPressed: () {
                                  // todo: sync to cloud on button press
                                },
                              ),
                              onTap: () {
                                StoreProvider.of<AppState>(context)
                                    .dispatch(GetSpeechResult(speechResultName: speechResult.speechName));
                                Navigator.pushNamed(context, AppRoutes.detailed_speech_result,
                                    arguments: <SpeechResult>{speechResult});
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  ListTile(
                    title: Text(
                      'Here you can see your saved speeches',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
