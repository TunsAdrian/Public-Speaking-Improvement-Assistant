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
    // key need to be converted to a valid ascii key
    final String validKey = fillerWord.hashCode.toString();

    await _fillerWordsBox.put(validKey, fillerWord);
    final List<String> fillerWords = _fillerWordsBox.values.toList();

    return fillerWords;
  }

  Future<List<String>> removeFillerWord({@required String fillerWord}) async {
    // key and value with same name
    // key need to be converted to a valid ascii key
    final String validKey = fillerWord.hashCode.toString();

    await _fillerWordsBox.delete(validKey);
    final List<String> fillerWords = _fillerWordsBox.values.toList();

    return fillerWords;
  }
}
