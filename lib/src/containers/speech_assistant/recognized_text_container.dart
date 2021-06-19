part of speech_assistant_containers;

class RecognizedTextContainer extends StatelessWidget {
  const RecognizedTextContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) => store.state.speechAssistant?.recognizedText ?? '',
      builder: builder,
    );
  }
}
