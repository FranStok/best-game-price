import 'package:arquitectura/domain/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state.dart';
part 'session_cubit.freezed.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit(this._authRepository) : super(const SessionState.initial());
  final AuthRepository _authRepository;
  login(String mail, String password) async {
    emit(state.copyWith(isLoading: true));
    final request = await _authRepository.login(mail, password);
    request.onResult(left: (error) {
      emit(state.copyWith(
          userCredentials: null, requestError: error, isLoading: false));
    }, right: (response) {
      emit(state.copyWith(
          userCredentials: response, requestError: null, isLoading: false));
    });
  }
  register(String mail, String password) async {
    emit(state.copyWith(isLoading: true));
    final request = await _authRepository.registration(mail, password);
    request.onResult(left: (error) {
      emit(state.copyWith(
          userCredentials: null, requestError: error, isLoading: false));
    }, right: (response) {
      emit(state.copyWith(
          userCredentials: response, requestError: null, isLoading: false));
    });
  }

  logOut(){
    emit(state.copyWith(userCredentials: null));
  }

  changeErrorField(FirebaseAuthException? error){
    emit(state.copyWith(requestError: error));
  }
}
