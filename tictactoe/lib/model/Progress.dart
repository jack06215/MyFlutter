import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tictactoe/model/finished_state.dart';

part 'progress.freezed.dart';

@freezed
class Progress with _$Progress {
  factory Progress.finished(FinishedState winner) = Finished;
  factory Progress.inProgress() = InProgress;
}
