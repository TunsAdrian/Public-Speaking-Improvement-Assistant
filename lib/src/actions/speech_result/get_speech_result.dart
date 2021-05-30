part of speech_result_actions;

@freezed
abstract class GetSpeechResult with _$GetSpeechResult implements AppAction {
  const factory GetSpeechResult({@required String speechResultUuid}) = GetSpeechResult$;

  const factory GetSpeechResult.successful(SpeechResult speechResult) = GetSpeechResultSuccessful;

  @Implements(ErrorAction)
  const factory GetSpeechResult.error(StateError error) = GetSpeechResultError;
}
