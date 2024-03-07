import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCD8gy1l6oMnFtPz7TL-qAjZuUoNwhW8a4",
            authDomain: "what-gift-nx0s6w.firebaseapp.com",
            projectId: "what-gift-nx0s6w",
            storageBucket: "what-gift-nx0s6w.appspot.com",
            messagingSenderId: "391980681607",
            appId: "1:391980681607:web:a9d2511a3a59927fd6eb22"));
  } else {
    await Firebase.initializeApp();
  }
}
