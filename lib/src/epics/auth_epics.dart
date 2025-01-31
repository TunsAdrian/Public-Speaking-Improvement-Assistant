import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetCurrentUser$>(_getCurrentUser),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, Signup$>(_signup),
      TypedEpic<AppState, SignOut$>(_signOut),
      TypedEpic<AppState, SignUpWithGoogle$>(_signUpWithGoogle),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
      TypedEpic<AppState, DeleteUserAccount$>(_deleteUserAccount),
      TypedEpic<AppState, SyncSpeechResult$>(_syncSpeechResult),
      TypedEpic<AppState, GetSyncedSpeechResults$>(_getSyncedSpeechResults),
    ]);
  }

  Stream<AppAction> _getCurrentUser(Stream<GetCurrentUser$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCurrentUser$ action) => Stream<GetCurrentUser$>.value(action)
            .asyncMap((GetCurrentUser$ action) => _api.getCurrentUser())
            .map((AppUser user) => GetCurrentUser.successful(user))
            .onErrorReturnWith((dynamic error) => GetCurrentUser.error(error)));
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signup(Stream<Signup$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Signup$ action) => Stream<Signup$>.value(action) // stream with one element, to call doOnData(action)
            .asyncMap((Signup$ action) => _api.signUp(
                  email: store.state.auth.info.email,
                  password: store.state.auth.info.password,
                  firstName: store.state.auth.info.firstName,
                  lastName: store.state.auth.info.lastName,
                ))
            .map((AppUser user) => Signup.successful(user))
            .onErrorReturnWith((dynamic error) => Signup.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
            .asyncMap((SignOut$ action) => _api.signOut())
            .mapTo(const SignOut.successful())
            .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }

  Stream<AppAction> _signUpWithGoogle(Stream<SignUpWithGoogle$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUpWithGoogle$ action) => Stream<SignUpWithGoogle$>.value(action)
            .asyncMap((SignUpWithGoogle$ action) => _api.signUpWithGoogle())
            .map((AppUser user) => SignUpWithGoogle.successful(user))
            .onErrorReturnWith((dynamic error) => SignUpWithGoogle.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
            .asyncMap((ResetPassword$ action) => _api.resetPassword(email: action.email))
            .mapTo(const ResetPassword.successful())
            .onErrorReturnWith((dynamic error) => ResetPassword.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _deleteUserAccount(Stream<DeleteUserAccount$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteUserAccount$ action) => Stream<DeleteUserAccount$>.value(action)
            .asyncMap((DeleteUserAccount$ action) => _api.deleteUserAccount())
            .mapTo(const DeleteUserAccount.successful())
            .onErrorReturnWith((dynamic error) => DeleteUserAccount.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _syncSpeechResult(Stream<SyncSpeechResult$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SyncSpeechResult$ action) => Stream<SyncSpeechResult$>.value(action)
            .asyncMap((SyncSpeechResult$ action) => _api.syncSpeechResultToCloud(
                  speechResult: action.speechResult,
                  isSynced: action.isSynced,
                ))
            .map((List<SpeechResult> speechResultList) => SyncSpeechResult.successful(speechResultList))
            .onErrorReturnWith((dynamic error) => SyncSpeechResult.error(error)));
  }

  Stream<AppAction> _getSyncedSpeechResults(Stream<GetSyncedSpeechResults$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetSyncedSpeechResults$ action) => Stream<GetSyncedSpeechResults$>.value(action)
            .asyncMap((GetSyncedSpeechResults$ action) => _api.getSyncedSpeechResults())
            .map((List<SpeechResult> speechResultList) => GetSyncedSpeechResults.successful(speechResultList))
            .onErrorReturnWith((dynamic error) => GetSyncedSpeechResults.error(error)));
  }
}
