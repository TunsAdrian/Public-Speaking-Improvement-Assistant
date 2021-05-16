part of speech_result_containers;

class SpeechResultContainer extends StatelessWidget {
  const SpeechResultContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<SpeechResult> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SpeechResult>(
      converter: (Store<AppState> store) => store.state.speechResult.speechResult,
      builder: builder,
    );
  }
}
