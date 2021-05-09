import 'package:public_speaking_assistant/src/actions/filler_words/index.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/filler_words_api.dart';
import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class FillerWordsEpics {
  const FillerWordsEpics({@required FillerWordsApi api})
      : assert(api != null),
        _api = api;

  final FillerWordsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetFillerWords$>(_getFillerWords),
      TypedEpic<AppState, AddFillerWord$>(_addFillerWord),
      TypedEpic<AppState, RemoveFillerWord$>(_removeFillerWord),
    ]);
  }

  Stream<AppAction> _getFillerWords(Stream<GetFillerWords$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFillerWords$ action) => Stream<GetFillerWords$>.value(action)
            .asyncMap((GetFillerWords$ action) => _api.getFillerWords())
            .map((List<String> fillerWords) => GetFillerWords.successful(fillerWords))
            .onErrorReturnWith((dynamic error) => GetFillerWords.error(error)));
  }

  Stream<AppAction> _addFillerWord(Stream<AddFillerWord$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddFillerWord$ action) => Stream<AddFillerWord$>.value(action)
            .asyncMap((AddFillerWord$ action) => _api.addFillerWord(fillerWord: action.fillerWord))
            .map((List<String> fillerWords) => AddFillerWord.successful(fillerWords))
            .onErrorReturnWith((dynamic error) => AddFillerWord.error(error)));
  }

  Stream<AppAction> _removeFillerWord(Stream<RemoveFillerWord$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveFillerWord$ action) => Stream<RemoveFillerWord$>.value(action)
            .asyncMap((RemoveFillerWord$ action) => _api.removeFillerWord(fillerWord: action.fillerWord))
            .map((List<String> fillerWords) => RemoveFillerWord.successful(fillerWords))
            .onErrorReturnWith((dynamic error) => RemoveFillerWord.error(error)));
  }
}
