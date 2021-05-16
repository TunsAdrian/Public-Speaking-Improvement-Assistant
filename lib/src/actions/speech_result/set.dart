part of speech_result_actions;

@freezed
abstract class UpdateSpeechResult with _$UpdateSpeechResult implements AppAction {
  const factory UpdateSpeechResult({
    String speechName,
  }) = UpdateSpeechResult$;
}
