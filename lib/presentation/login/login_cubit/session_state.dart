part of 'session_cubit.dart';


@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial({
    UserCredential? userCredentials,
    FirebaseAuthException? requestError,
    @Default(false)bool isLoading
  }) = _Initial;
}
