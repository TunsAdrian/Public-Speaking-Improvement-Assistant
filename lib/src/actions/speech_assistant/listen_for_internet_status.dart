part of speech_assistant_actions;

@freezed
abstract class ListenForInternetStatus with _$ListenForInternetStatus implements AppAction {
  const factory ListenForInternetStatus() = ListenForInternetStatus$;

  const factory ListenForInternetStatus.successful(bool hasInternetConnection) = ListenForInternetStatusSuccessful;

  @Implements(ErrorAction)
  const factory ListenForInternetStatus.error(Object error) = ListenForInternetStatusError;
}
