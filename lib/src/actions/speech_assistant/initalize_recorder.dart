part of speech_assistant_actions;

@freezed
abstract class InitializeRecorder with _$InitializeRecorder implements AppAction {
  const factory InitializeRecorder() = InitializeRecorder$;

  const factory InitializeRecorder.successful() = InitializeRecorderSuccessful;

  @Implements(ErrorAction)
  const factory InitializeRecorder.error(Object error) = InitializeRecorderError;
}
