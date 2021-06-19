part of speech_assistant_actions;

@freezed
abstract class StopRecorder with _$StopRecorder implements AppAction {
  const factory StopRecorder() = StopRecorder$;

  const factory StopRecorder.successful(bool isListening) = StopRecorderSuccessful;

  @Implements(ErrorAction)
  const factory StopRecorder.error(Object error) = StopRecorderError;
}
