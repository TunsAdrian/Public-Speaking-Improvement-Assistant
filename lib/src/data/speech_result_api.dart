import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

class SpeechResultApi {
  const SpeechResultApi({@required Box<dynamic> speechResultsBox})
      : assert(speechResultsBox != null),
        _speechResultsBox = speechResultsBox;

  final Box<dynamic> _speechResultsBox;

  Future<SpeechResult> createSpeechResult({
    @required Duration speechDuration,
    @required double speechClarity,
    @required List<String> speechWords,
    @required List<String> speechFillerWords,
  }) async {
    final SpeechResult speechResult = SpeechResult((SpeechResultBuilder b) {
      b
        ..speechDuration = speechDuration
        ..speechClarity = speechClarity
        ..speechFillerWords = ListBuilder<String>(speechFillerWords)
        ..speechWords = ListBuilder<String>(speechWords);
    });

    return speechResult;
  }

  Future<List<SpeechResult>> saveSpeechResult({@required SpeechResult speechResult}) async {
    List<SpeechResult> speechResultsList = await _speechResultsBox.get('speechResultsKey');

    if (speechResultsList != null) {
        speechResultsList.add(speechResult);
    } else {
      speechResultsList = <SpeechResult>[speechResult];
    }

    await _speechResultsBox.put('speechResultsKey', speechResultsList);

    return speechResultsList;
  }
}
