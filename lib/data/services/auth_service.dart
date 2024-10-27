import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<UserCredential> registration(String mail,String password){
    return FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "franciscoastoreca@hotmail.com", password: "hola123");
  }
}