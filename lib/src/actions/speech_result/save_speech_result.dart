part of speech_result_actions;

@freezed
abstract class SaveSpeechResult with _$SaveSpeechResult implements AppAction {
  const factory SaveSpeechResult({@required SpeechResult speechResult}) = SaveSpeechResult$;

  const factory SaveSpeechResult.successful(List<SpeechResult> speechResultList) = SaveSpeechResultSuccessful;

  @Implements(ErrorAction)
  const factory SaveSpeechResult.error(Object error) = SaveSpeechResultError;
}
