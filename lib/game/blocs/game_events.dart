import 'package:flutter/services.dart';

import '../models/board.dart';

/// Generic Game event.
abstract class GameEvent {}

/// Event called to load assets.
class LoadAssetsEvent extends GameEvent {}

/// Called to update the game logic.
class UpdateGame extends GameEvent {}

/// Called to pause the game.
class PauseGameEvent extends GameEvent {}

/// Called to resume the game.
class ResumeGameEvent extends GameEvent {}

/// Called when user want to start a new game.
class NewGameEvent extends GameEvent {}

/// Called when the game board was created.
class OnBoardCreatedEvent extends GameEvent {
  /// Convenient constructor.
  OnBoardCreatedEvent(this.board);

  /// The just created board.
  final Board board;
}

/// Called when a physical key is pressed.
class OnKeyPressedEvent extends GameEvent {
  /// Convenient constructor.
  OnKeyPressedEvent(this.key);

  /// The pressed key.
  final LogicalKeyboardKey key;
}
