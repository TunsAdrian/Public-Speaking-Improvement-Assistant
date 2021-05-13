export 'auth/index.dart';
export 'filler_words/index.dart';
export 'speech_result/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(AppAction action);
