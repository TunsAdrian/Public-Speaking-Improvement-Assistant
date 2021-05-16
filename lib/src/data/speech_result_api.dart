import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/models/speech_result/hive_model/hiveSpeechResult.dart';

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

  List<SpeechResult> getSpeechResultList() {
    final List<HiveSpeechResult> hiveSpeechResultList = _speechResultsBox.get('speechResultsKey');
    return _convertHiveListToSpeechResult(hiveSpeechResultList: hiveSpeechResultList);
  }

  Future<List<SpeechResult>> saveSpeechResult({@required SpeechResult speechResult}) async {
    final HiveSpeechResult convertedSpeechResult = _convertSpeechResultToHive(speechResult: speechResult);
    List<HiveSpeechResult> hiveSpeechResultList = await _speechResultsBox.get('speechResultsKey');

    if (hiveSpeechResultList != null) {
      hiveSpeechResultList.add(convertedSpeechResult);
    } else {
      hiveSpeechResultList = <HiveSpeechResult>[convertedSpeechResult];
    }

    await _speechResultsBox.put('speechResultsKey', hiveSpeechResultList);

    return _convertHiveListToSpeechResult(hiveSpeechResultList: hiveSpeechResultList);
  }

  Future<List<SpeechResult>> removeSpeechResult({@required SpeechResult speechResult}) async {
    final HiveSpeechResult convertedSpeechResult = _convertSpeechResultToHive(speechResult: speechResult);
    List<HiveSpeechResult> hiveSpeechResultList = await _speechResultsBox.get('speechResultsKey');

    if (hiveSpeechResultList != null) {
      hiveSpeechResultList.remove(convertedSpeechResult);
    } else {
      hiveSpeechResultList = <HiveSpeechResult>[convertedSpeechResult];
    }

    await _speechResultsBox.put('speechResultsKey', hiveSpeechResultList);

    return _convertHiveListToSpeechResult(hiveSpeechResultList: hiveSpeechResultList);
  }

  HiveSpeechResult _convertSpeechResultToHive({@required SpeechResult speechResult}) {
    final HiveSpeechResult hiveSpeechResult = HiveSpeechResult(
      speechResult.speechDuration.inSeconds,
      speechResult.speechClarity,
      speechResult.speechWords.toList(),
      speechResult.speechFillerWords.toList(),
      speechResult.speechName,
    );

    return hiveSpeechResult;
  }

  SpeechResult _convertHiveToSpeechResult({@required HiveSpeechResult hiveSpeechResult}) {
    final SpeechResult speechResult = SpeechResult((SpeechResultBuilder b) {
      b
        ..speechDuration = Duration(seconds: hiveSpeechResult.speechDuration)
        ..speechClarity = hiveSpeechResult.speechClarity
        ..speechFillerWords = ListBuilder<String>(hiveSpeechResult.speechWords)
        ..speechWords = ListBuilder<String>(hiveSpeechResult.speechFillerWords)
        ..speechName = hiveSpeechResult.speechName;
    });

    return speechResult;
  }

  List<SpeechResult> _convertHiveListToSpeechResult({@required List<HiveSpeechResult> hiveSpeechResultList}) {
    final List<SpeechResult> speechResultList =
        hiveSpeechResultList.map((HiveSpeechResult e) => _convertHiveToSpeechResult(hiveSpeechResult: e)).toList();
    return speechResultList;
  }
}
