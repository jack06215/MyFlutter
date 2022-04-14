// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyClass _$$_MyClassFromJson(Map<String, dynamic> json) => _$_MyClass(
      greeting: json['greeting'] as String,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_MyClassToJson(_$_MyClass instance) =>
    <String, dynamic>{
      'greeting': instance.greeting,
      'instructions': instance.instructions,
    };
