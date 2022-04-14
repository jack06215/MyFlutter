// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_dataclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Welcome _$$_WelcomeFromJson(Map<String, dynamic> json) => _$_Welcome(
      greeting: json['greeting'] as String,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_WelcomeToJson(_$_Welcome instance) =>
    <String, dynamic>{
      'greeting': instance.greeting,
      'instructions': instance.instructions,
    };
