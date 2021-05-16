part of speech_result_containers;

class SavedSpeechResultsContainer extends StatelessWidget {
  const SavedSpeechResultsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<SpeechResult>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<SpeechResult>>(
      converter: (Store<AppState> store) => store.state.speechResult.savedSpeechResults.toList(),
      builder: builder,
    );
  }
}
