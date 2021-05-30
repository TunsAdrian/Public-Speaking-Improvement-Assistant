part of auth_containers;

class SyncedSpeechResultsContainer extends StatelessWidget {
  const SyncedSpeechResultsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<SpeechResult>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<SpeechResult>>(
      // if the user or the list are null, return an empty list of the required type
      converter: (Store<AppState> store) => store.state.auth.user?.userSpeechResults?.toList() ?? <SpeechResult>[],
      builder: builder,
    );
  }
}
