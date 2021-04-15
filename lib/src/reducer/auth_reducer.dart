import 'package:built_collection/built_collection.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, SignupSuccessful>(_signupSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo>(_updateRegistrationInfo),
  TypedReducer<AuthState, SignUpWithGoogleSuccessful>(_signUpWithGoogleSuccessful),
]);

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _signupSuccessful(AuthState state, SignupSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    } else if (action.password != null) {
      b.info.password = action.password;
    } else if (action.firstName != null) {
      b.info.firstName = action.firstName;
    } else if (action.lastName != null) {
      b.info.lastName = action.lastName;
    } else {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _signUpWithGoogleSuccessful(AuthState state, SignUpWithGoogleSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}
