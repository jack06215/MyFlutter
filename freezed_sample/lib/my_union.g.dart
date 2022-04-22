// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => _$Data(
      json['value'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$Loading _$$LoadingFromJson(Map<String, dynamic> json) => _$Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingToJson(_$Loading instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ErrorDetails _$$ErrorDetailsFromJson(Map<String, dynamic> json) =>
    _$ErrorDetails(
      json['message'] as String?,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorDetailsToJson(_$ErrorDetails instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$Complex _$$ComplexFromJson(Map<String, dynamic> json) => _$Complex(
      json['a'] as int,
      json['b'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ComplexToJson(_$Complex instance) => <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'runtimeType': instance.$type,
    };
