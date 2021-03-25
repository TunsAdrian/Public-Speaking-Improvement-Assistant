import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, Signup$>(_signup),
      TypedEpic<AppState, SignOut$>(_signOut),
      TypedEpic<AppState, SignUpWithGoogle$>(_signUpWithGoogle),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
            .asyncMap((InitializeApp$ action) => _api.getCurrentUser())
            .map((AppUser user) => InitializeApp.successful(user))
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
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
                  username: store.state.auth.info.username ?? store.state.auth.info.email.split('@').first,
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
}
