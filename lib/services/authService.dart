import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signInA() async {
    // ignore: unused_local_variable
    try {
      UserCredential result = await _auth.signInAnonymously();
      // mengembalikan firebase user
      User? user = result.user;

      return user;
    } catch (e) {
      print(e.toString());

      return null;
    }
  }

  // ignore: non_constant_identifier_names
  // anonymous method tapi tidak mengembalikan apapun
  static Future<void> signOut() async {
    _auth.signOut();
  }

  // userStream adalah getter
  static Stream<User?> get userStream => _auth.authStateChanges();
}
