part of filler_words_containers;

class FillerWordsNamesContainer extends StatelessWidget {
  const FillerWordsNamesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      converter: (Store<AppState> store) =>
          store.state.fillerWords?.fillerWords?.map((FillerWord e) => e.text.toLowerCase())?.toList() ?? <String>[],
      builder: builder,
    );
  }
}
