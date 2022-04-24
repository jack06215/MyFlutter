# tictactoe
A simple game that demonstrate how to use the packages.
- Riverpod
- Freezed

# Dataclass
## Tile
$x$ and $y$ representing the place on the board.
```dart
@freezed
class Tile with _$Tile {
  const factory Tile(int x, int y) = _Tile;
}
```
## Progress
Whether the game is finished or still in progress
- `inProgress` when the game is still going
- `finished` when the game is finished
```dart
@freezed
class Progress with _$Progress {
  factory Progress.finished(FinishedState winner) = Finished;
  factory Progress.inProgress() = InProgress;
}
```
## Game State
Represent the current state of the game
- Which player clicked which tile: `Map`
- The current player: `PlayerType`
- Whether the game is finished or not: `Progress`
```dart
@freezed
class GameState with _$GameState {
  factory GameState(
    Map<Tile, PlayerType> tiles,
    Progress progress, {
    @Default(PlayerType.circle) PlayerType currentPlayer,
  }) = _GameState;
}
```

# Magaging the Game
We can use `StateNotifier` with `GameState` to manage the state of the game. The `StateNotifier` will notify consumers, when the state has changed. We are going to introduce a toggle method that will toggle the selected player on the `Tile`. Then, we will **trigger the updates by mapping the tiles to a new map** to detect changes and **setting the current player to the next player.**

```dart
class GameStateNotifier extends StateNotifier {
  GameStateNotifier(GameState state) : super(state) {
    Map tiles = Map();
    for (int x = 0; x < 3; x++) {
      for (int y = 0; y < 3; y++) {
        tiles.putIfAbsent(Tile(x, y), () => PlayerType.EMPTY);
      }
    }
    this.state = state.copyWith(tiles: tiles);
  }

  toggle(Tile tile) {
    state.tiles[tile] = state.currentPlayer;
    state = state.copyWith(
      currentPlayer: _nextPlayer(),
      tiles: state.tiles.map((key, value) => MapEntry(key, value)),
    );
  }

  PlayerType _nextPlayer() {
    if (state.currentPlayer == PlayerType.CIRCLE) {
      return PlayerType.CROSS;
    }
    return PlayerType.CIRCLE;
  }
}
```