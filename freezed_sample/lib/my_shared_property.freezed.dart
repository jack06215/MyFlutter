// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_shared_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SharedPropertyTearOff {
  const _$SharedPropertyTearOff();

  SharedProperty0 person({String? name, int? age}) {
    return SharedProperty0(
      name: name,
      age: age,
    );
  }

  SharedProperty1 city({String? name, int? population}) {
    return SharedProperty1(
      name: name,
      population: population,
    );
  }
}

/// @nodoc
const $SharedProperty = _$SharedPropertyTearOff();

/// @nodoc
mixin _$SharedProperty {
  String? get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, int? age) person,
    required TResult Function(String? name, int? population) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, int? age)? person,
    TResult Function(String? name, int? population)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, int? age)? person,
    TResult Function(String? name, int? population)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SharedProperty0 value) person,
    required TResult Function(SharedProperty1 value) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SharedProperty0 value)? person,
    TResult Function(SharedProperty1 value)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SharedProperty0 value)? person,
    TResult Function(SharedProperty1 value)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPropertyCopyWith<SharedProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPropertyCopyWith<$Res> {
  factory $SharedPropertyCopyWith(
          SharedProperty value, $Res Function(SharedProperty) then) =
      _$SharedPropertyCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$SharedPropertyCopyWithImpl<$Res>
    implements $SharedPropertyCopyWith<$Res> {
  _$SharedPropertyCopyWithImpl(this._value, this._then);

  final SharedProperty _value;
  // ignore: unused_field
  final $Res Function(SharedProperty) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SharedProperty0CopyWith<$Res>
    implements $SharedPropertyCopyWith<$Res> {
  factory $SharedProperty0CopyWith(
          SharedProperty0 value, $Res Function(SharedProperty0) then) =
      _$SharedProperty0CopyWithImpl<$Res>;
  @override
  $Res call({String? name, int? age});
}

/// @nodoc
class _$SharedProperty0CopyWithImpl<$Res>
    extends _$SharedPropertyCopyWithImpl<$Res>
    implements $SharedProperty0CopyWith<$Res> {
  _$SharedProperty0CopyWithImpl(
      SharedProperty0 _value, $Res Function(SharedProperty0) _then)
      : super(_value, (v) => _then(v as SharedProperty0));

  @override
  SharedProperty0 get _value => super._value as SharedProperty0;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(SharedProperty0(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SharedProperty0
    with DiagnosticableTreeMixin
    implements SharedProperty0 {
  _$SharedProperty0({this.name, this.age});

  @override
  final String? name;
  @override
  final int? age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SharedProperty.person(name: $name, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SharedProperty.person'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SharedProperty0 &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  $SharedProperty0CopyWith<SharedProperty0> get copyWith =>
      _$SharedProperty0CopyWithImpl<SharedProperty0>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, int? age) person,
    required TResult Function(String? name, int? population) city,
  }) {
    return person(name, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, int? age)? person,
    TResult Function(String? name, int? population)? city,
  }) {
    return person?.call(name, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, int? age)? person,
    TResult Function(String? name, int? population)? city,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SharedProperty0 value) person,
    required TResult Function(SharedProperty1 value) city,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SharedProperty0 value)? person,
    TResult Function(SharedProperty1 value)? city,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SharedProperty0 value)? person,
    TResult Function(SharedProperty1 value)? city,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class SharedProperty0 implements SharedProperty {
  factory SharedProperty0({String? name, int? age}) = _$SharedProperty0;

  @override
  String? get name;
  int? get age;
  @override
  @JsonKey(ignore: true)
  $SharedProperty0CopyWith<SharedProperty0> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedProperty1CopyWith<$Res>
    implements $SharedPropertyCopyWith<$Res> {
  factory $SharedProperty1CopyWith(
          SharedProperty1 value, $Res Function(SharedProperty1) then) =
      _$SharedProperty1CopyWithImpl<$Res>;
  @override
  $Res call({String? name, int? population});
}

/// @nodoc
class _$SharedProperty1CopyWithImpl<$Res>
    extends _$SharedPropertyCopyWithImpl<$Res>
    implements $SharedProperty1CopyWith<$Res> {
  _$SharedProperty1CopyWithImpl(
      SharedProperty1 _value, $Res Function(SharedProperty1) _then)
      : super(_value, (v) => _then(v as SharedProperty1));

  @override
  SharedProperty1 get _value => super._value as SharedProperty1;

  @override
  $Res call({
    Object? name = freezed,
    Object? population = freezed,
  }) {
    return _then(SharedProperty1(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SharedProperty1
    with DiagnosticableTreeMixin
    implements SharedProperty1 {
  _$SharedProperty1({this.name, this.population});

  @override
  final String? name;
  @override
  final int? population;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SharedProperty.city(name: $name, population: $population)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SharedProperty.city'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('population', population));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SharedProperty1 &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.population, population));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(population));

  @JsonKey(ignore: true)
  @override
  $SharedProperty1CopyWith<SharedProperty1> get copyWith =>
      _$SharedProperty1CopyWithImpl<SharedProperty1>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, int? age) person,
    required TResult Function(String? name, int? population) city,
  }) {
    return city(name, population);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, int? age)? person,
    TResult Function(String? name, int? population)? city,
  }) {
    return city?.call(name, population);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, int? age)? person,
    TResult Function(String? name, int? population)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(name, population);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SharedProperty0 value) person,
    required TResult Function(SharedProperty1 value) city,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SharedProperty0 value)? person,
    TResult Function(SharedProperty1 value)? city,
  }) {
    return city?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SharedProperty0 value)? person,
    TResult Function(SharedProperty1 value)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }
}

abstract class SharedProperty1 implements SharedProperty {
  factory SharedProperty1({String? name, int? population}) = _$SharedProperty1;

  @override
  String? get name;
  int? get population;
  @override
  @JsonKey(ignore: true)
  $SharedProperty1CopyWith<SharedProperty1> get copyWith =>
      throw _privateConstructorUsedError;
}
