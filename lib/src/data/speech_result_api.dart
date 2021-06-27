import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveSpeechResult.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveSpeechWord.dart';

import 'package:uuid/uuid.dart';

class SpeechResultApi {
  const SpeechResultApi({@required Box<HiveSpeechResult> speechResultsBox, @required Uuid uuidInstance})
      : assert(speechResultsBox != null),
        assert(uuidInstance != null),
        _speechResultsBox = speechResultsBox,
        _uuidInstance = uuidInstance;

  final Box<HiveSpeechResult> _speechResultsBox;
  final Uuid _uuidInstance;

  Future<SpeechResult> createSpeechResult({
    @required Duration speechDuration,
    @required double speechClarity,
    @required double speechWordsPerMinute,
    @required List<SpeechWord> speechWords,
  }) async {
    final SpeechResult speechResult = SpeechResult((SpeechResultBuilder b) {
      b
        ..uuid = _uuidInstance.v1()
        ..speechDuration = speechDuration
        ..speechClarity = speechClarity
        ..wordsPerMinute = speechWordsPerMinute
        ..speechWords = ListBuilder<SpeechWord>(speechWords);
    });

    return speechResult;
  }

  SpeechResult getSpeechResult({@required String speechResultUuid}) {
    final HiveSpeechResult hiveSpeechResult = _speechResultsBox.get(speechResultUuid);
    return _convertHiveToSpeechResult(hiveSpeechResult: hiveSpeechResult);
  }

  List<SpeechResult> getSpeechResultList() {
    final List<HiveSpeechResult> hiveSpeechResultList = _speechResultsBox.values.toList();
    return _convertHiveListToSpeechResult(hiveSpeechResultList: hiveSpeechResultList);
  }

  Future<List<SpeechResult>> saveSpeechResult({@required SpeechResult speechResult}) async {
    final HiveSpeechResult convertedSpeechResult = _convertSpeechResultToHive(speechResult: speechResult);

    await _speechResultsBox.put(speechResult.uuid, convertedSpeechResult);
    final List<HiveSpeechResult> hiveSpeechResultList = _speechResultsBox.values.toList();

    return _convertHiveListToSpeechResult(hiveSpeechResultList: hiveSpeechResultList);
  }

  Future<List<SpeechResult>> removeSpeechResult({@required SpeechResult speechResult}) async {
    await _speechResultsBox.delete(speechResult.uuid);

    final List<HiveSpeechResult> hiveSpeechResultList = _speechResultsBox.values.toList();

    return _convertHiveListToSpeechResult(hiveSpeechResultList: hiveSpeechResultList);
  }

  Future<List<SpeechResult>> saveSyncedSpeechResultsLocally({@required List<SpeechResult> userSpeechResults}) async {
    final List<HiveSpeechResult> hiveSpeechResultList = _speechResultsBox.values.toList();
    final List<String> speechResultUuidList = _getSpeechResultUuidList(hiveSpeechResultList: hiveSpeechResultList);

    HiveSpeechResult convertedSpeechResult;
    for (final SpeechResult userSpeechResult in userSpeechResults) {
      if (!speechResultUuidList.contains(userSpeechResult.uuid)) {
        convertedSpeechResult = _convertSpeechResultToHive(speechResult: userSpeechResult);
        await _speechResultsBox.put(userSpeechResult.uuid, convertedSpeechResult);
      }
    }

    final List<HiveSpeechResult> updatedHiveSpeechResultList = _speechResultsBox.values.toList();

    return _convertHiveListToSpeechResult(hiveSpeechResultList: updatedHiveSpeechResultList);
  }

  HiveSpeechResult _convertSpeechResultToHive({@required SpeechResult speechResult}) {
    final HiveSpeechResult hiveSpeechResult = HiveSpeechResult(
      speechResult.speechDuration.inSeconds,
      speechResult.speechClarity,
      speechResult.speechWords.map((SpeechWord word) => HiveSpeechWord(word.text, word.isFiller)).toList(),
      speechResult.speechName,
      speechResult.uuid,
      speechResult.wordsPerMinute,
    );

    return hiveSpeechResult;
  }

  SpeechResult _convertHiveToSpeechResult({@required HiveSpeechResult hiveSpeechResult}) {
    final SpeechResult speechResult = SpeechResult((SpeechResultBuilder b) {
      b
        ..uuid = hiveSpeechResult.uuid
        ..speechDuration = Duration(seconds: hiveSpeechResult.speechDuration)
        ..speechClarity = hiveSpeechResult.speechClarity
        ..wordsPerMinute = hiveSpeechResult.wordsPerMinute
        ..speechName = hiveSpeechResult.speechName
        ..speechWords = ListBuilder<SpeechWord>(
          hiveSpeechResult.speechWords.map<SpeechWord>(
            (HiveSpeechWord word) => SpeechWord((SpeechWordBuilder b) {
              b
                ..text = word.text
                ..isFiller = word.isFiller;
            }),
          ),
        );
    });

    return speechResult;
  }

  List<SpeechResult> _convertHiveListToSpeechResult({@required List<HiveSpeechResult> hiveSpeechResultList}) {
    final List<SpeechResult> speechResultList =
        hiveSpeechResultList.map((HiveSpeechResult e) => _convertHiveToSpeechResult(hiveSpeechResult: e)).toList();
    return speechResultList;
  }

  List<String> _getSpeechResultUuidList({@required List<HiveSpeechResult> hiveSpeechResultList}) {
    final List<String> speechResultList = hiveSpeechResultList.map((HiveSpeechResult e) => e.uuid).toList();
    return speechResultList;
  }
}
