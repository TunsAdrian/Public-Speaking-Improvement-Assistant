part of speech_result_actions;

@freezed
abstract class GetSpeechResultList with _$GetSpeechResultList implements AppAction {
  const factory GetSpeechResultList() = GetSpeechResultList$;

  const factory GetSpeechResultList.successful(List<SpeechResult> speechResultList) = GetSpeechResultListSuccessful;

  @Implements(ErrorAction)
  const factory GetSpeechResultList.error(Object error) = GetSpeechResultListError;
}
