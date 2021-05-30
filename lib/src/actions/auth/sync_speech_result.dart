part of auth_actions;

@freezed
abstract class SyncSpeechResult with _$SyncSpeechResult implements AppAction {
  const factory SyncSpeechResult({@required SpeechResult speechResult, @required bool isSynced}) = SyncSpeechResult$;

  const factory SyncSpeechResult.successful(List<SpeechResult> speechResultList) = SyncSpeechResultSuccessful;

  @Implements(ErrorAction)
  const factory SyncSpeechResult.error(StateError error) = SyncSpeechResultError;
}
