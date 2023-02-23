import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DavaoPrimeFirebaseUser {
  DavaoPrimeFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DavaoPrimeFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DavaoPrimeFirebaseUser> davaoPrimeFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DavaoPrimeFirebaseUser>(
      (user) {
        currentUser = DavaoPrimeFirebaseUser(user);
        return currentUser!;
      },
    );
