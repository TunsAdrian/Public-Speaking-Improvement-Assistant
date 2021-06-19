part of speech_assistant_containers;

class ListenSpeechContainer extends StatelessWidget {
  const ListenSpeechContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) => store.state.speechAssistant?.isListening ?? false,
      builder: builder,
    );
  }
}
