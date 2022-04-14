import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'my_dataclass.freezed.dart';
part 'my_dataclass.g.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

@freezed
abstract class Welcome with _$Welcome {
  const factory Welcome({
    required String greeting,
    required List<String> instructions,
  }) = _Welcome;

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      _$WelcomeFromJson(json);
}
