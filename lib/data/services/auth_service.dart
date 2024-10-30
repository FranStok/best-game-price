import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<UserCredential> registration(String mail,String password){
    return FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail, password: password);
  }
  Future<UserCredential> login(String mail,String password){
    return FirebaseAuth.instance.signInWithEmailAndPassword(
        email: mail, password: password);
  }
}