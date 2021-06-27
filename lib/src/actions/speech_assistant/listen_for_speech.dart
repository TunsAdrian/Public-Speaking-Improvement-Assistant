part of speech_assistant_actions;

@freezed
abstract class ListenForSpeech with _$ListenForSpeech implements AppAction {
  const factory ListenForSpeech({@required String languageCode, @required String serviceAccount}) = ListenForSpeech$;

  const factory ListenForSpeech.successful(List<SpeechWord> recognizedText) = ListenForSpeechSuccessful;

  const factory ListenForSpeech.partial(List<SpeechWord> recognizedText) = ListenForSpeechPartial;

  @Implements(ErrorAction)
  const factory ListenForSpeech.error(Object error) = ListenForSpeechError;
}
