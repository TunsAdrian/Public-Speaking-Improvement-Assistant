part of filler_words_actions;

@freezed
abstract class GetFillerWords with _$GetFillerWords implements AppAction {
  const factory GetFillerWords() = GetFillerWords$;

  const factory GetFillerWords.successful(List<String> fillerWords) = GetFillerWordsSuccessful;

  @Implements(ErrorAction)
  const factory GetFillerWords.error(StateError error) = GetFillerWordsError;
}
