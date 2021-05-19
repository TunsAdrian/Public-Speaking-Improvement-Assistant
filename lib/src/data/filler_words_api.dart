import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

class FillerWordsApi {
  const FillerWordsApi({@required Box<String> fillerWordsBox})
      : assert(fillerWordsBox != null),
        _fillerWordsBox = fillerWordsBox;

  final Box<String> _fillerWordsBox;

  List<String> getFillerWords() {
    final List<String> fillerWords = _fillerWordsBox.values.toList();
    return fillerWords;
  }

  Future<List<String>> addFillerWord({@required String fillerWord}) async {
    // key and value with same name
    await _fillerWordsBox.put(fillerWord, fillerWord);
    final List<String> fillerWords = _fillerWordsBox.values.toList();

    return fillerWords;
  }

  Future<List<String>> removeFillerWord({@required String fillerWord}) async {
    // key and value with same name
    await _fillerWordsBox.delete(fillerWord);
    final List<String> fillerWords = _fillerWordsBox.values.toList();

    return fillerWords;
  }
}
