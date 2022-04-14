// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_dataclass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Welcome _$WelcomeFromJson(Map<String, dynamic> json) {
  return _Welcome.fromJson(json);
}

/// @nodoc
class _$WelcomeTearOff {
  const _$WelcomeTearOff();

  _Welcome call(
      {required String greeting, required List<String> instructions}) {
    return _Welcome(
      greeting: greeting,
      instructions: instructions,
    );
  }

  Welcome fromJson(Map<String, Object?> json) {
    return Welcome.fromJson(json);
  }
}

/// @nodoc
const $Welcome = _$WelcomeTearOff();

/// @nodoc
mixin _$Welcome {
  String get greeting => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WelcomeCopyWith<Welcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeCopyWith<$Res> {
  factory $WelcomeCopyWith(Welcome value, $Res Function(Welcome) then) =
      _$WelcomeCopyWithImpl<$Res>;
  $Res call({String greeting, List<String> instructions});
}

/// @nodoc
class _$WelcomeCopyWithImpl<$Res> implements $WelcomeCopyWith<$Res> {
  _$WelcomeCopyWithImpl(this._value, this._then);

  final Welcome _value;
  // ignore: unused_field
  final $Res Function(Welcome) _then;

  @override
  $Res call({
    Object? greeting = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      greeting: greeting == freezed
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$WelcomeCopyWith<$Res> implements $WelcomeCopyWith<$Res> {
  factory _$WelcomeCopyWith(_Welcome value, $Res Function(_Welcome) then) =
      __$WelcomeCopyWithImpl<$Res>;
  @override
  $Res call({String greeting, List<String> instructions});
}

/// @nodoc
class __$WelcomeCopyWithImpl<$Res> extends _$WelcomeCopyWithImpl<$Res>
    implements _$WelcomeCopyWith<$Res> {
  __$WelcomeCopyWithImpl(_Welcome _value, $Res Function(_Welcome) _then)
      : super(_value, (v) => _then(v as _Welcome));

  @override
  _Welcome get _value => super._value as _Welcome;

  @override
  $Res call({
    Object? greeting = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_Welcome(
      greeting: greeting == freezed
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Welcome implements _Welcome {
  const _$_Welcome({required this.greeting, required this.instructions});

  factory _$_Welcome.fromJson(Map<String, dynamic> json) =>
      _$$_WelcomeFromJson(json);

  @override
  final String greeting;
  @override
  final List<String> instructions;

  @override
  String toString() {
    return 'Welcome(greeting: $greeting, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Welcome &&
            const DeepCollectionEquality().equals(other.greeting, greeting) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(greeting),
      const DeepCollectionEquality().hash(instructions));

  @JsonKey(ignore: true)
  @override
  _$WelcomeCopyWith<_Welcome> get copyWith =>
      __$WelcomeCopyWithImpl<_Welcome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WelcomeToJson(this);
  }
}

abstract class _Welcome implements Welcome {
  const factory _Welcome(
      {required String greeting,
      required List<String> instructions}) = _$_Welcome;

  factory _Welcome.fromJson(Map<String, dynamic> json) = _$_Welcome.fromJson;

  @override
  String get greeting;
  @override
  List<String> get instructions;
  @override
  @JsonKey(ignore: true)
  _$WelcomeCopyWith<_Welcome> get copyWith =>
      throw _privateConstructorUsedError;
}
