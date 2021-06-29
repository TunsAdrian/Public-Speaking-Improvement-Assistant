part of filler_words_actions;

@freezed
abstract class GetFillerWords with _$GetFillerWords implements AppAction {
  const factory GetFillerWords() = GetFillerWords$;

  const factory GetFillerWords.successful(List<FillerWord> fillerWords) = GetFillerWordsSuccessful;

  @Implements(ErrorAction)
  const factory GetFillerWords.error(Object error) = GetFillerWordsError;
}
