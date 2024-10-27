import 'package:arquitectura/core/util/result.dart';
import 'package:firebase_auth/firebase_auth.dart';

typedef FirebaseFuture<T>=Result<T,FirebaseAuthException>;
typedef FirebaseFutureSuccess<T>=Success<T,FirebaseAuthException>;
typedef FirebaseFutureFailure<T>=Failure<T,FirebaseAuthException>;
