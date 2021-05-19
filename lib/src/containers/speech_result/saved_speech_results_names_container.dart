part of speech_result_containers;

class SavedSpeechResultsNamesContainer extends StatelessWidget {
  const SavedSpeechResultsNamesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      converter: (Store<AppState> store) =>
          store.state.speechResult.savedSpeechResults.map((SpeechResult e) => e.speechName).toList(),
      builder: builder,
    );
  }
}
