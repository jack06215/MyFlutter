import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:tictactoe/model/finished_state.dart';
import 'package:tictactoe/model/game_state.dart';
import 'package:tictactoe/model/player_type.dart';
import 'package:tictactoe/model/progress.dart';
import 'package:tictactoe/model/tile.dart';

class GameStateNotifier extends StateNotifier<GameState> {
  GameStateNotifier(GameState state) : super(state) {
    final Map<Tile, PlayerType> tiles = <Tile, PlayerType>{};
    for (int x = 0; x < 3; x++) {
      for (int y = 0; y < 3; y++) {
        tiles.putIfAbsent(Tile(x, y), () => PlayerType.empty);
      }
    }
    this.state = state.copyWith(tiles: tiles, progress: Progress.inProgress());
  }

  void toggle(Tile tile) {
    state.tiles[tile] = state.currentPlayer;
    state = state.copyWith(
      currentPlayer: _nextPlayer(),
      progress: _determineProgress(),
      tiles: state.tiles.map((key, value) => MapEntry(key, value)),
    );
  }

  void reset() {
    state = state.copyWith(
        currentPlayer: PlayerType.circle,
        progress: Progress.inProgress(),
        tiles:
            state.tiles.map((key, value) => MapEntry(key, PlayerType.empty)));
  }

  Progress _determineProgress() {
    final finished = isFinished();
    if (finished == null) {
      return state.progress;
    }
    return Progress.finished(finished);
  }

  PlayerType _nextPlayer() {
    if (state.currentPlayer == PlayerType.circle) {
      return PlayerType.cross;
    }
    return PlayerType.circle;
  }

  FinishedState? isFinished() {
    if (_hasThreeInARow(PlayerType.circle)) {
      return FinishedState.circle;
    }
    if (_hasThreeInARow(PlayerType.cross)) {
      return FinishedState.cross;
    }
    if (state.tiles.entries
        .where((element) => element.value == PlayerType.empty)
        .toList()
        .isEmpty) {
      return FinishedState.draw;
    }
    return null;
  }

  bool _hasThreeInARow(PlayerType player) {
    final tiles = state.tiles.entries
        .where((element) => element.value == player)
        .map((e) => e.key)
        .toList();

    if (tiles.where((element) => element.y == element.x).toList().length == 3) {
      return true;
    }
    if (tiles.where((element) => 2 - element.y == element.y).toList().length ==
        3) {
      return true;
    }
    for (int i = 0; i < 3; i++) {
      if (tiles.where((tile) => tile.x == i).toList().length == 3) {
        return true;
      }
      if (tiles.where((tile) => tile.y == i).toList().length == 3) {
        return true;
      }
    }
    return false;
  }
}
