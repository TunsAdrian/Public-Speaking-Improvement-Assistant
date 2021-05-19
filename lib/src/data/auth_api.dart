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
    return AppUser.fromJson(snapshot.data());
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
        ..lastName = lastName;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> signOut() async {
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
      return AppUser.fromJson(snapshot.data());
    }

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..firstName = user.displayName.split(' ').first
        ..lastName = user.displayName.split(' ').last
        ..photoUrl = user.photoURL;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    return appUser;
  }
}
