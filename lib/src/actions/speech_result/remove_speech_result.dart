part of speech_result_actions;

@freezed
abstract class RemoveSpeechResult with _$RemoveSpeechResult implements AppAction {
  const factory RemoveSpeechResult(SpeechResult speechResult) = RemoveSpeechResult$;

  const factory RemoveSpeechResult.successful(List<SpeechResult> speechResultList) = RemoveSpeechResultSuccessful;

  @Implements(ErrorAction)
  const factory RemoveSpeechResult.error(Object error) = RemoveSpeechResultError;
}
