part of 'games_cubit.dart';

@freezed
class GamesState with _$GamesState {
  const factory GamesState.initial({
    List<Game>? games,
    @Default(true) bool isLoading
  }) = _Initial;
}
