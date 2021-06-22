part of speech_assistant_containers;

class SpeechAssistantContainer extends StatelessWidget {
  const SpeechAssistantContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<SpeechAssistantState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SpeechAssistantState>(
      converter: (Store<AppState> store) => store.state.speechAssistant,
      builder: builder,
    );
  }
}
