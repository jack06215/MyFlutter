import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  factory Todo(
    String id,
    String description, {
    @Default(false) bool completed,
  }) = _Todo;
}
