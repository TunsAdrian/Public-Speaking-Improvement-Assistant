part of filler_words_actions;

@freezed
abstract class AddFillerWord with _$AddFillerWord implements AppAction {
  const factory AddFillerWord({@required String fillerWord}) = AddFillerWord$;

  const factory AddFillerWord.successful(List<String> fillerWords) = AddFillerWordSuccessful;

  @Implements(ErrorAction)
  const factory AddFillerWord.error(StateError error) = AddFillerWordError;
}
