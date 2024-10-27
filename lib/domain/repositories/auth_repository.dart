import 'package:arquitectura/core/apis/firebase/firebase_future.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<FirebaseFuture<UserCredential>> registration(String mail,String password);
}