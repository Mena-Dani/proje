import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NatureWorldFirebaseUser {
  NatureWorldFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NatureWorldFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NatureWorldFirebaseUser> natureWorldFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<NatureWorldFirebaseUser>(
        (user) => currentUser = NatureWorldFirebaseUser(user));
