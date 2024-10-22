part of speech_result_actions;

@freezed
abstract class SaveSyncedResultsLocally with _$SaveSyncedResultsLocally implements AppAction {
  const factory SaveSyncedResultsLocally(ActionResponse response, {@required List<SpeechResult> userSpeechResults}) =
      SaveSyncedResultsLocally$;

  const factory SaveSyncedResultsLocally.successful(List<SpeechResult> speechResultsUpdated) =
      SaveSyncedResultsLocallySuccessful;

  @Implements(ErrorAction)
  const factory SaveSyncedResultsLocally.error(Object error) = SaveSyncedResultsLocallyError;
}
