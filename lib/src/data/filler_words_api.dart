import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/models/filler_words/index.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveFillerWord.dart';
import 'package:uuid/uuid.dart';

class FillerWordsApi {
  const FillerWordsApi({@required Box<HiveFillerWord> fillerWordsBox, @required Uuid uuidInstance})
      : assert(fillerWordsBox != null),
        assert(uuidInstance != null),
        _fillerWordsBox = fillerWordsBox,
        _uuidInstance = uuidInstance;

  final Box<HiveFillerWord> _fillerWordsBox;
  final Uuid _uuidInstance;

  List<FillerWord> getFillerWords() {
    final List<HiveFillerWord> hiveFillerWordList = _fillerWordsBox.values.toList();

    return _convertHiveListToFillerWord(hiveFillerWordList: hiveFillerWordList);
  }

  Future<List<FillerWord>> addFillerWord({@required String fillerWordText}) async {
    final HiveFillerWord hiveFillerWord = HiveFillerWord(_uuidInstance.v1(), fillerWordText);

    await _fillerWordsBox.put(hiveFillerWord.uuid, hiveFillerWord);
    final List<HiveFillerWord> hiveFillerWordList = _fillerWordsBox.values.toList();

    return _convertHiveListToFillerWord(hiveFillerWordList: hiveFillerWordList);
  }

  Future<List<FillerWord>> removeFillerWord({@required String fillerWordUuid}) async {
    await _fillerWordsBox.delete(fillerWordUuid);

    final List<HiveFillerWord> hiveFillerWordList = _fillerWordsBox.values.toList();

    return _convertHiveListToFillerWord(hiveFillerWordList: hiveFillerWordList);
  }

  FillerWord _convertHiveToFillerWord({@required HiveFillerWord hiveFillerWord}) {
    final FillerWord fillerWord = FillerWord((FillerWordBuilder b) {
      b
        ..uuid = hiveFillerWord.uuid
        ..text = hiveFillerWord.text;
    });

    return fillerWord;
  }

  List<FillerWord> _convertHiveListToFillerWord({@required List<HiveFillerWord> hiveFillerWordList}) {
    final List<FillerWord> fillerWordList =
        hiveFillerWordList.map((HiveFillerWord e) => _convertHiveToFillerWord(hiveFillerWord: e)).toList();
    return fillerWordList;
  }
}
