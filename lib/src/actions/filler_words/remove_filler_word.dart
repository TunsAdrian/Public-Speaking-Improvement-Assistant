part of filler_words_actions;

@freezed
abstract class RemoveFillerWord with _$RemoveFillerWord implements AppAction {
  const factory RemoveFillerWord({@required String fillerWord}) = RemoveFillerWord$;

  const factory RemoveFillerWord.successful(List<String> fillerWords) = RemoveFillerWordSuccessful;

  @Implements(ErrorAction)
  const factory RemoveFillerWord.error(Object error) = RemoveFillerWordError;
}
