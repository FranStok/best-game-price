import 'package:arquitectura/domain/models/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'custom_game_response.freezed.dart';
// optional: Since our CustomGameResponse class is serializable, we must add this line.
// But if CustomGameResponse was not serializable, we could skip it.
part 'custom_game_response.g.dart';

@freezed
class CustomGameResponse with _$CustomGameResponse {
  const factory CustomGameResponse({
    @JsonKey(name: "games") required List<Game> games,
  }) = _CustomGameResponse;

  factory CustomGameResponse.fromJson(Map<String, Object?> json)
      => _$CustomGameResponseFromJson(json);


}