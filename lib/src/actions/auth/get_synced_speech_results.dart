part of auth_actions;

@freezed
abstract class GetSyncedSpeechResults with _$GetSyncedSpeechResults implements AppAction {
  const factory GetSyncedSpeechResults() = GetSyncedSpeechResults$;

  const factory GetSyncedSpeechResults.successful(List<SpeechResult> speechResultList) =
      GetSyncedSpeechResultsSuccessful;

  @Implements(ErrorAction)
  const factory GetSyncedSpeechResults.error(Object error) = GetSyncedSpeechResultsError;
}
