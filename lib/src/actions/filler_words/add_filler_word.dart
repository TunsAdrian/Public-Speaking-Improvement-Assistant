part of filler_words_actions;

@freezed
abstract class AddFillerWord with _$AddFillerWord implements AppAction {
  const factory AddFillerWord({@required String fillerWordText}) = AddFillerWord$;

  const factory AddFillerWord.successful(List<FillerWord> fillerWords) = AddFillerWordSuccessful;

  @Implements(ErrorAction)
  const factory AddFillerWord.error(Object error) = AddFillerWordError;
}
