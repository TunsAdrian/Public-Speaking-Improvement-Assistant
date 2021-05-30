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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Library'),
          centerTitle: true,
        ),
        body: UserContainer(
          builder: (BuildContext context, AppUser user) {
            return SyncedSpeechResultsContainer(
              builder: (BuildContext context, List<SpeechResult> syncedSpeechResultsList) {
                return SavedSpeechResultsContainer(
                  builder: (BuildContext context, List<SpeechResult> speechResultList) {
                    if (speechResultList != null && speechResultList.isNotEmpty) {
                      return Column(
                        children: <Widget>[
                          Expanded(
                            child: ListView.builder(
                              itemCount: speechResultList.length,
                              itemBuilder: (BuildContext context, int index) {
                                final SpeechResult speechResult = speechResultList[index];
                                final bool isSpeechResultSynced = syncedSpeechResultsList.contains(speechResult);

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
                                    if (isSpeechResultSynced) {
                                      StoreProvider.of<AppState>(context).dispatch(SyncSpeechResult(
                                        speechResult: speechResult,
                                        isSynced: isSpeechResultSynced,
                                      ));
                                    }

                                    final SnackBar snackBarNameSpeech = SnackBar(
                                      content: isSpeechResultSynced
                                          ? const Text('Speech entry removed both from local storage and from cloud')
                                          : const Text('Speech entry removed'),
                                      action: SnackBarAction(
                                        label: 'Undo',
                                        onPressed: () {
                                          StoreProvider.of<AppState>(_scaffoldKey.currentContext)
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
                                        icon: isSpeechResultSynced
                                            ? const Icon(Icons.cloud_done_outlined)
                                            : const Icon(Icons.cloud_off_outlined),
                                        onPressed: () {
                                          if (user != null) {
                                            if (user.isEmailVerified) {
                                              // if the result is already synced, it means it must be deleted now
                                              StoreProvider.of<AppState>(context).dispatch(SyncSpeechResult(
                                                speechResult: speechResult,
                                                isSynced: isSpeechResultSynced,
                                              ));

                                              StoreProvider.of<AppState>(context)
                                                  .dispatch(const GetSyncedSpeechResults());
                                            } else {
                                              const SnackBar snackBarNoUserConnected = SnackBar(
                                                content: Text('You need to confirm your email in order to sync your speeches'),
                                              );

                                              ScaffoldMessenger.of(context).showSnackBar(snackBarNoUserConnected);
                                            }
                                          } else {
                                            const SnackBar snackBarNoUserConnected = SnackBar(
                                              content: Text('You need to be logged-in in order to sync your speeches'),
                                            );

                                            ScaffoldMessenger.of(context).showSnackBar(snackBarNoUserConnected);
                                          }
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
                );
              },
            );
          },
        ),
      ),
    );
  }
}