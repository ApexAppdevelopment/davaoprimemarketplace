import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA_NIOWG6RCJN_EMtPq7YIauwdgINVh-v4",
            authDomain: "affordeals-uae.firebaseapp.com",
            projectId: "affordeals-uae",
            storageBucket: "affordeals-uae.appspot.com",
            messagingSenderId: "85997095672",
            appId: "1:85997095672:web:33bc982b061a80403ac90d",
            measurementId: "G-BHVVWB104J"));
  } else {
    await Firebase.initializeApp();
  }
}
