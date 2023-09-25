import 'package:event_app/data/local/local.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

UserCredential? currentUserCredential;

Future signIn() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

  final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

  // Sign in the user with credentials
  currentUserCredential = await auth.signInWithCredential(credential);

  return (currentUserCredential?.additionalUserInfo?.profile);
}

Future<void> logout() async {
  final GoogleSignIn googleSign = GoogleSignIn();
  await googleSign.signOut();
}

Future<void> saveUserDetails(
  SecureStorageService secureStorage,
  String name,
  String picture,
  String email,
  String id,
) async {
  await secureStorage.write(key: "name", value: name);
  await secureStorage.write(key: "picture", value: picture);
  await secureStorage.write(key: "email", value: email);
  await secureStorage.write(key: "id", value: id);
}
