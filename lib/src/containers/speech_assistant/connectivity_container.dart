part of speech_assistant_containers;

class ConnectivityContainer extends StatelessWidget {
  const ConnectivityContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) => store.state.speechAssistant?.hasInternetConnection ?? false,
      builder: builder,
    );
  }
}
