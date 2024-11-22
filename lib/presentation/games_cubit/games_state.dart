part of 'games_cubit.dart';

@freezed
class GamesState with _$GamesState {
  const factory GamesState.initial({
    List<Game>? games,
    List<Genre>? genres,
    @Default(true) bool isLoading,
    Genre? selectedGenre
  }) = _Initial;
}
