part of filler_words_containers;

class FillerWordsContainer extends StatelessWidget {
  const FillerWordsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      converter: (Store<AppState> store) => store.state.fillerWords.fillerWords.toList(),
      builder: builder,
    );
  }
}
