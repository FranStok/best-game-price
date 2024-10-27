import 'package:arquitectura/core/apis/firebase/firebase_future.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/data/services/auth_service.dart';
import 'package:arquitectura/domain/repositories/auth_repository.dart';
import 'package:arquitectura/domain/responses/user_response.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp(this._authService);
  final AuthService _authService;
  
  @override
  Future<FirebaseFuture<UserCredential>> registration(
      String mail, String password) async {
    try {
      var request = await _authService.registration(mail, password);
      return FirebaseFutureSuccess<UserCredential>(request);
    } on FirebaseAuthException catch (e) {
      return FirebaseFutureFailure<UserCredential>(e);
    }
  }
}
