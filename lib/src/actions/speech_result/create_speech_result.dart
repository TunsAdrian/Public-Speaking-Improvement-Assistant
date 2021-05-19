part of speech_result_actions;

@freezed
abstract class CreateSpeechResult with _$CreateSpeechResult implements AppAction {
  const factory CreateSpeechResult({
    @required Duration speechDuration,
    @required double speechClarity,
    @required List<String> speechWords,
    @required List<String> speechFillerWords,
  }) = CreateSpeechResult$;

  const factory CreateSpeechResult.successful(SpeechResult speechResult) = CreateSpeechResultSuccessful;

  @Implements(ErrorAction)
  const factory CreateSpeechResult.error(Object error) = CreateSpeechResultError;
}
