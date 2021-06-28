part of speech_assistant_containers;

class RecognizedTextContainer extends StatelessWidget {
  const RecognizedTextContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<SpeechWord>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<SpeechWord>>(
      converter: (Store<AppState> store) => store.state.speechAssistant?.recognizedText?.toList() ?? <SpeechWord>[],
      builder: builder,
    );
  }
}
