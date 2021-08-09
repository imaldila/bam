import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth;

  AuthServices(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}

// class AuthServices {
//   static FirebaseAuth _auth = FirebaseAuth.instance;

//   static Future signInAnonymouse() async {
//     try {
//       UserCredential userCredential = await _auth.signInAnonymously();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   static Stream get userStream => _auth.authStateChanges();

// }

// class AuthServices {
//   static FirebaseAuth _auth = FirebaseAuth.instance;

//   static Future<User> signInAnonymouse() async {
//     try {
//       UserCredential authResult = await _auth.signInAnonymously();
//       User? firebaseUser = authResult.user;

//       return firebaseUser!;
//     } catch (e) {
//       print(e.toString());

//       return null!;
//     }
//   }

//   static Stream get firebaseUserStream  => _auth.authStateChanges();
// }
