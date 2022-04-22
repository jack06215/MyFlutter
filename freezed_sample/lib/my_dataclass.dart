import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'my_dataclass.freezed.dart';
part 'my_dataclass.g.dart';

MyClass myClassFromJson(String str) => MyClass.fromJson(json.decode(str));

String myClassToJson(MyClass data) => json.encode(data.toJson());

@freezed
abstract class MyClass with _$MyClass {
  const factory MyClass({
    required String greeting,
    required List<String> instructions,
  }) = _MyClass;

  factory MyClass.fromJson(Map<String, dynamic> json) =>
      _$MyClassFromJson(json);
}
