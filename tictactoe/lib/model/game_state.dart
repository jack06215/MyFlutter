import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tictactoe/model/player_type.dart';
import 'package:tictactoe/model/progress.dart';
import 'package:tictactoe/model/tile.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  factory GameState(
    Map<Tile, PlayerType> tiles,
    Progress progress, {
    @Default(PlayerType.circle) PlayerType currentPlayer,
  }) = _GameState;
}
