import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

/**
 * part is "[...] a symptom for using library level privacy 
 * as opposed to class level privacy." 
 * (https://stackoverflow.com/questions/18403551/whats-the-reasoning-behind-part-and-part-of-in-dart-libraries)
 */
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
