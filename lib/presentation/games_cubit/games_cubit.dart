import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/data/repositories/custom_game_store_respository_imp.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'games_state.dart';
part 'games_cubit.freezed.dart';

class GamesCubit extends Cubit<GamesState> {
  GamesCubit() : super(const GamesState.initial()) {
    loadGames();
  }
  final gamesRepository = CustomGameStoresRepositoryImp(
      customGameStoresService: sl.customGameStoresService);

  loadGames() async {
    final result = await gamesRepository.getGames();
    result.onResult(left: (e) {
      print(e);
    }, right: (data) {
      emit(state.copyWith(games: data.data.games, isLoading: false));
    });
  }
}
