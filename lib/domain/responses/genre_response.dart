import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/models/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_response.freezed.dart';
part 'genre_response.g.dart';

@freezed
class GenreResponse with _$GenreResponse {
  const factory GenreResponse({
    @JsonKey(name: "genres") required List<Genre> genres,
  }) = _GenreResponse;

  factory GenreResponse.fromJson(Map<String, Object?> json)
      => _$GenreResponseFromJson(json);


}