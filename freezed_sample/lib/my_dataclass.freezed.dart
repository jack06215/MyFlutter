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

MyClass _$MyClassFromJson(Map<String, dynamic> json) {
  return _MyClass.fromJson(json);
}

/// @nodoc
class _$MyClassTearOff {
  const _$MyClassTearOff();

  _MyClass call(
      {required String greeting, required List<String> instructions}) {
    return _MyClass(
      greeting: greeting,
      instructions: instructions,
    );
  }

  MyClass fromJson(Map<String, Object?> json) {
    return MyClass.fromJson(json);
  }
}

/// @nodoc
const $MyClass = _$MyClassTearOff();

/// @nodoc
mixin _$MyClass {
  String get greeting => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyClassCopyWith<MyClass> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyClassCopyWith<$Res> {
  factory $MyClassCopyWith(MyClass value, $Res Function(MyClass) then) =
      _$MyClassCopyWithImpl<$Res>;
  $Res call({String greeting, List<String> instructions});
}

/// @nodoc
class _$MyClassCopyWithImpl<$Res> implements $MyClassCopyWith<$Res> {
  _$MyClassCopyWithImpl(this._value, this._then);

  final MyClass _value;
  // ignore: unused_field
  final $Res Function(MyClass) _then;

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
abstract class _$MyClassCopyWith<$Res> implements $MyClassCopyWith<$Res> {
  factory _$MyClassCopyWith(_MyClass value, $Res Function(_MyClass) then) =
      __$MyClassCopyWithImpl<$Res>;
  @override
  $Res call({String greeting, List<String> instructions});
}

/// @nodoc
class __$MyClassCopyWithImpl<$Res> extends _$MyClassCopyWithImpl<$Res>
    implements _$MyClassCopyWith<$Res> {
  __$MyClassCopyWithImpl(_MyClass _value, $Res Function(_MyClass) _then)
      : super(_value, (v) => _then(v as _MyClass));

  @override
  _MyClass get _value => super._value as _MyClass;

  @override
  $Res call({
    Object? greeting = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_MyClass(
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
class _$_MyClass implements _MyClass {
  const _$_MyClass({required this.greeting, required this.instructions});

  factory _$_MyClass.fromJson(Map<String, dynamic> json) =>
      _$$_MyClassFromJson(json);

  @override
  final String greeting;
  @override
  final List<String> instructions;

  @override
  String toString() {
    return 'MyClass(greeting: $greeting, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyClass &&
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
  _$MyClassCopyWith<_MyClass> get copyWith =>
      __$MyClassCopyWithImpl<_MyClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyClassToJson(this);
  }
}

abstract class _MyClass implements MyClass {
  const factory _MyClass(
      {required String greeting,
      required List<String> instructions}) = _$_MyClass;

  factory _MyClass.fromJson(Map<String, dynamic> json) = _$_MyClass.fromJson;

  @override
  String get greeting;
  @override
  List<String> get instructions;
  @override
  @JsonKey(ignore: true)
  _$MyClassCopyWith<_MyClass> get copyWith =>
      throw _privateConstructorUsedError;
}
