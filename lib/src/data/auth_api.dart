import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

class AuthApi {
  const AuthApi({
    @required FirebaseAuth auth,
    @required FirebaseFirestore firestore,
    @required GoogleSignIn google,
  })  : assert(auth != null),
        assert(firestore != null),
        assert(google != null),
        _auth = auth,
        _firestore = firestore,
        _google = google;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _google;

  Future<AppUser> getCurrentUser() async {
    final User user = _auth.currentUser;
    if (user == null) {
      return null;
    }

    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential response = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = response.user;

    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    final AppUser appUser = AppUser.fromJson(snapshot.data());

    if (!appUser.isEmailVerified && user.emailVerified) {
      final AppUser updatedUser = AppUser((AppUserBuilder b) {
        b
          ..uid = appUser.uid
          ..email = appUser.email
          ..firstName = appUser.firstName
          ..lastName = appUser.lastName
          ..userSpeechResults = ListBuilder<SpeechResult>(appUser.userSpeechResults)
          ..isEmailVerified = user.emailVerified;
      });

      await _firestore.doc('users/${user.uid}').set(updatedUser.json);
      return updatedUser;
    }
    return appUser;
  }

  Future<AppUser> signUp(
      {@required String email,
      @required String password,
      @required String firstName,
      @required String lastName}) async {
    final UserCredential response = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = response.user;

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..firstName = firstName
        ..lastName = lastName
        ..userSpeechResults = ListBuilder<SpeechResult>(<SpeechResult>[])
        ..isEmailVerified = false;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    await user.sendEmailVerification();

    return appUser;
  }

  Future<void> signOut() async {
    // remove the last connected google account, so it will always prompt which account to connect with
    if (_google?.currentUser != null) {
      await _google.disconnect();
    }
    await _auth.signOut();
  }

  Future<AppUser> signUpWithGoogle() async {
    // sign in with google
    final GoogleSignInAccount googleAccount = await _google.signIn();
    if (googleAccount == null) {
      return null;
    }

    final GoogleSignInAuthentication authentication = await googleAccount.authentication;

    // create/login with google credential
    final OAuthCredential credential =
        GoogleAuthProvider.credential(idToken: authentication.idToken, accessToken: authentication.accessToken);

    final UserCredential response = await _auth.signInWithCredential(credential);
    final User user = response.user;

    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    if (snapshot.exists) {
      final AppUser appUser = AppUser.fromJson(snapshot.data());

      if (!appUser.isEmailVerified && user.emailVerified) {
        final AppUser updatedUser = AppUser((AppUserBuilder b) {
          b
            ..uid = appUser.uid
            ..email = appUser.email
            ..firstName = appUser.firstName
            ..lastName = appUser.lastName
            ..userSpeechResults = ListBuilder<SpeechResult>(appUser.userSpeechResults)
            ..isEmailVerified = user.emailVerified;
        });

        await _firestore.doc('users/${user.uid}').set(updatedUser.json);
        return updatedUser;
      }
      return appUser;
    }

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..firstName = user.displayName.split(' ').first
        ..lastName = user.displayName.split(' ').last
        ..userSpeechResults = ListBuilder<SpeechResult>(<SpeechResult>[])
        ..isEmailVerified = false;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    await user.sendEmailVerification();

    return appUser;
  }

  Future<void> resetPassword({@required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> deleteUserAccount() async {
    final User currentUser = _auth.currentUser;
    if (currentUser == null) {
      return;
    }

    // remove both the user data and the user authentication entry
    await _firestore.collection('users').doc('${currentUser.uid}').delete();
    await currentUser.delete();
  }

  Future<List<SpeechResult>> syncSpeechResultToCloud(
      {@required SpeechResult speechResult, @required bool isSynced}) async {
    final User currentUser = _auth.currentUser;
    if (currentUser == null) {
      return null;
    }

    final DocumentSnapshot snapshot = await _firestore.doc('users/${currentUser.uid}').get();

    final AppUser user = AppUser.fromJson(snapshot.data());
    final List<SpeechResult> syncedSpeechResults = user.userSpeechResults.toList();

    // if the result is already on cloud, it means it must be removed
    if (isSynced) {
      syncedSpeechResults.remove(speechResult);
    } else {
      syncedSpeechResults.add(speechResult);
    }

    final AppUser userUpdated = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..firstName = user.firstName
        ..lastName = user.lastName
        ..userSpeechResults = ListBuilder<SpeechResult>(syncedSpeechResults)
        ..isEmailVerified = user.isEmailVerified;
    });

    await _firestore.doc('users/${user.uid}').set(userUpdated.json);

    return syncedSpeechResults;
  }

  Future<List<SpeechResult>> getSyncedSpeechResults() async {
    final User currentUser = _auth.currentUser;
    if (currentUser == null) {
      return null;
    }

    final DocumentSnapshot snapshot = await _firestore.doc('users/${currentUser.uid}').get();

    final AppUser user = AppUser.fromJson(snapshot.data());
    final List<SpeechResult> syncedSpeechResults = user.userSpeechResults.toList();

    return syncedSpeechResults;
  }
}
