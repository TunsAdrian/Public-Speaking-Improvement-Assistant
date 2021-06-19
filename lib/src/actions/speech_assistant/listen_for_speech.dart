part of speech_assistant_actions;

@freezed
abstract class ListenForSpeech with _$ListenForSpeech implements AppAction {
  const factory ListenForSpeech({@required String languageCode, @required String serviceAccount}) = ListenForSpeech$;

  const factory ListenForSpeech.successful(String recognizedText) = ListenForSpeechSuccessful;

  @Implements(ErrorAction)
  const factory ListenForSpeech.error(Object error) = ListenForSpeechError;
}
