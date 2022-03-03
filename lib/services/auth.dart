// import 'package:firebase_auth/firebase_auth.dart';

// class AuthMethods {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   User _userFromFirebaseUser(FirebaseUser user){
//     return user !=null? User(userId:user.uid)
//   }

//   Future signInWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       FirebaseUser firebaseUser = result.user;
//     } catch (e) {}
//   }
// }
