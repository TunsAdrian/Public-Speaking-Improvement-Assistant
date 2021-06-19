part of speech_assistant_actions;

@freezed
abstract class StartRecorder with _$StartRecorder implements AppAction {
  const factory StartRecorder() = StartRecorder$;

  const factory StartRecorder.successful(bool isListening) = StartRecorderSuccessful;

  @Implements(ErrorAction)
  const factory StartRecorder.error(Object error) = StartRecorderError;
}
