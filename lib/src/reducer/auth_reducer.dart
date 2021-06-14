import 'package:built_collection/built_collection.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, SignupSuccessful>(_signupSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo>(_updateRegistrationInfo),
  TypedReducer<AuthState, SignUpWithGoogleSuccessful>(_signUpWithGoogleSuccessful),
  TypedReducer<AuthState, DeleteUserAccountSuccessful>(_deleteUserAccountSuccessful),
  TypedReducer<AuthState, SyncSpeechResultSuccessful>(_syncSpeechResultSuccessful),
  TypedReducer<AuthState, GetSyncedSpeechResultsSuccessful>(_getSyncedSpeechResultsSuccessful),
  TypedReducer<AuthState, SignOutSuccessful>(_signOutSuccessful),
]);

AuthState _getCurrentUserSuccessful(AuthState state, GetCurrentUserSuccessful action) {
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

AuthState _deleteUserAccountSuccessful(AuthState state, DeleteUserAccountSuccessful action) {
  return AuthState.initialState();
}

AuthState _signOutSuccessful(AuthState state, SignOutSuccessful action) {
  return AuthState.initialState();
}

AuthState _syncSpeechResultSuccessful(AuthState state, SyncSpeechResultSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user.userSpeechResults = ListBuilder<SpeechResult>(action.speechResultList);
  });
}

AuthState _getSyncedSpeechResultsSuccessful(AuthState state, GetSyncedSpeechResultsSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user.userSpeechResults = ListBuilder<SpeechResult>(action.speechResultList);
  });
}
