import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Act8FirebaseUser {
  Act8FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Act8FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Act8FirebaseUser> act8FirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Act8FirebaseUser>((user) => currentUser = Act8FirebaseUser(user));
