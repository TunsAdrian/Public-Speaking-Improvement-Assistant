part of speech_assistant_containers;

class ConfidenceContainer extends StatelessWidget {
  const ConfidenceContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<double> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, double>(
      converter: (Store<AppState> store) => store.state.speechAssistant?.confidence ?? 0.0,
      builder: builder,
    );
  }
}
