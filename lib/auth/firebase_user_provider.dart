import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UnidemoFirebaseUser {
  UnidemoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

UnidemoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UnidemoFirebaseUser> unidemoFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UnidemoFirebaseUser>(
        (user) => currentUser = UnidemoFirebaseUser(user));
