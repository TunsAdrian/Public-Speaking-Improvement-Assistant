import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/data/speech_result_api.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class SpeechResultEpics {
  const SpeechResultEpics({@required SpeechResultApi api})
      : assert(api != null),
        _api = api;

  final SpeechResultApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreateSpeechResult$>(_createSpeechResult),
    ]);
  }

  Stream<AppAction> _createSpeechResult(Stream<CreateSpeechResult$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateSpeechResult$ action) => Stream<CreateSpeechResult$>.value(action)
            .asyncMap((CreateSpeechResult$ action) => _api.createSpeechResult(
                  speechDuration: action.speechDuration,
                  speechClarity: action.speechClarity,
                  speechFillerWords: action.speechFillerWords,
                  speechWords: action.speechWords,
                ))
            .map((SpeechResult speechResult) => CreateSpeechResult.successful(speechResult))
            .onErrorReturnWith((dynamic error) => CreateSpeechResult.error(error)));
  }

// Stream<AppAction> _getFillerWords(Stream<GetFillerWords$> actions, EpicStore<AppState> store) {
//   return actions //
//       .flatMap((GetFillerWords$ action) => Stream<GetFillerWords$>.value(action)
//           .asyncMap((GetFillerWords$ action) => _api.getFillerWords())
//           .map((List<String> fillerWords) => GetFillerWords.successful(fillerWords))
//           .onErrorReturnWith((dynamic error) => GetFillerWords.error(error)));
// }
//
// Stream<AppAction> _addFillerWord(Stream<AddFillerWord$> actions, EpicStore<AppState> store) {
//   return actions //
//       .flatMap((AddFillerWord$ action) => Stream<AddFillerWord$>.value(action)
//           .asyncMap((AddFillerWord$ action) => _api.addFillerWord(fillerWord: action.fillerWord))
//           .map((List<String> fillerWords) => AddFillerWord.successful(fillerWords))
//           .onErrorReturnWith((dynamic error) => AddFillerWord.error(error)));
// }
//
// Stream<AppAction> _removeFillerWord(Stream<RemoveFillerWord$> actions, EpicStore<AppState> store) {
//   return actions //
//       .flatMap((RemoveFillerWord$ action) => Stream<RemoveFillerWord$>.value(action)
//           .asyncMap((RemoveFillerWord$ action) => _api.removeFillerWord(fillerWord: action.fillerWord))
//           .map((List<String> fillerWords) => RemoveFillerWord.successful(fillerWords))
//           .onErrorReturnWith((dynamic error) => RemoveFillerWord.error(error)));
// }
}
