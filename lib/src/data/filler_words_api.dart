import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

class FillerWordsApi {
  const FillerWordsApi({@required Box<dynamic> fillerWordsBox})
      : assert(fillerWordsBox != null),
        _fillerWordsBox = fillerWordsBox;

  final Box<dynamic> _fillerWordsBox;

  List<String> getFillerWords() {
    final List<String> fillerWords = _fillerWordsBox.get('fillerWordsKey');
    return fillerWords;
  }

  Future<List<String>> addFillerWord({@required String fillerWord}) async {
    List<String> fillerWords = await _fillerWordsBox.get('fillerWordsKey');

    if (fillerWords != null) {
      if (!fillerWords.contains(fillerWord)) {
        fillerWords.add(fillerWord);
      }
    } else {
      fillerWords = <String>[fillerWord];
    }

    await _fillerWordsBox.put('fillerWordsKey', fillerWords);

    return fillerWords;
  }

  Future<List<String>> removeFillerWord({@required String fillerWord}) async {
    final List<String> fillerWords = await _fillerWordsBox.get('fillerWordsKey');

    if (fillerWords != null) {
      fillerWords.remove(fillerWord);
    }

    await _fillerWordsBox.put('fillerWordsKey', fillerWords);

    return fillerWords;
  }
}
