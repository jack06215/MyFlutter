import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.freezed.dart';

@freezed
abstract class Progress with _$Progress {
  factory Progress.finished(FinishedState winner) = Finished;
  factory Progress.inProgress() = InProgress;
}

enum FinishedState {
  @JsonValue('CROSS')
  cross,
  @JsonValue('CIRCLE')
  circle,
  @JsonValue('DRAW')
  draw
}
