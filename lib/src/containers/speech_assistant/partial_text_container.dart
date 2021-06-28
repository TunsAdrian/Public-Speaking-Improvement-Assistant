part of speech_assistant_containers;

class PartialTextContainer extends StatelessWidget {
  const PartialTextContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<SpeechWord>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<SpeechWord>>(
      converter: (Store<AppState> store) => store.state.speechAssistant?.possibleText?.toList() ?? <SpeechWord>[],
      builder: builder,
    );
  }
}
