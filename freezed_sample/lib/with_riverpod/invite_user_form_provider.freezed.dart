// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invite_user_form_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InviteUserFormStateTearOff {
  const _$InviteUserFormStateTearOff();

  _StateInvalid invalid({Email? email}) {
    return _StateInvalid(
      email: email,
    );
  }

  _StateValidated validated({required Email email}) {
    return _StateValidated(
      email: email,
    );
  }

  _StateSubmitting submitting({required Email email}) {
    return _StateSubmitting(
      email: email,
    );
  }

  _StateError error({required Email email, required Exception exception}) {
    return _StateError(
      email: email,
      exception: exception,
    );
  }
}

/// @nodoc
const $InviteUserFormState = _$InviteUserFormStateTearOff();

/// @nodoc
mixin _$InviteUserFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email) invalid,
    required TResult Function(Email email) validated,
    required TResult Function(Email email) submitting,
    required TResult Function(Email email, Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInvalid value) invalid,
    required TResult Function(_StateValidated value) validated,
    required TResult Function(_StateSubmitting value) submitting,
    required TResult Function(_StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteUserFormStateCopyWith<$Res> {
  factory $InviteUserFormStateCopyWith(
          InviteUserFormState value, $Res Function(InviteUserFormState) then) =
      _$InviteUserFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InviteUserFormStateCopyWithImpl<$Res>
    implements $InviteUserFormStateCopyWith<$Res> {
  _$InviteUserFormStateCopyWithImpl(this._value, this._then);

  final InviteUserFormState _value;
  // ignore: unused_field
  final $Res Function(InviteUserFormState) _then;
}

/// @nodoc
abstract class _$StateInvalidCopyWith<$Res> {
  factory _$StateInvalidCopyWith(
          _StateInvalid value, $Res Function(_StateInvalid) then) =
      __$StateInvalidCopyWithImpl<$Res>;
  $Res call({Email? email});
}

/// @nodoc
class __$StateInvalidCopyWithImpl<$Res>
    extends _$InviteUserFormStateCopyWithImpl<$Res>
    implements _$StateInvalidCopyWith<$Res> {
  __$StateInvalidCopyWithImpl(
      _StateInvalid _value, $Res Function(_StateInvalid) _then)
      : super(_value, (v) => _then(v as _StateInvalid));

  @override
  _StateInvalid get _value => super._value as _StateInvalid;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_StateInvalid(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
    ));
  }
}

/// @nodoc

class _$_StateInvalid extends _StateInvalid {
  const _$_StateInvalid({this.email}) : super._();

  @override
  final Email? email;

  @override
  String toString() {
    return 'InviteUserFormState.invalid(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateInvalid &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$StateInvalidCopyWith<_StateInvalid> get copyWith =>
      __$StateInvalidCopyWithImpl<_StateInvalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email) invalid,
    required TResult Function(Email email) validated,
    required TResult Function(Email email) submitting,
    required TResult Function(Email email, Exception exception) error,
  }) {
    return invalid(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
  }) {
    return invalid?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInvalid value) invalid,
    required TResult Function(_StateValidated value) validated,
    required TResult Function(_StateSubmitting value) submitting,
    required TResult Function(_StateError value) error,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _StateInvalid extends InviteUserFormState {
  const factory _StateInvalid({Email? email}) = _$_StateInvalid;
  const _StateInvalid._() : super._();

  Email? get email;
  @JsonKey(ignore: true)
  _$StateInvalidCopyWith<_StateInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StateValidatedCopyWith<$Res> {
  factory _$StateValidatedCopyWith(
          _StateValidated value, $Res Function(_StateValidated) then) =
      __$StateValidatedCopyWithImpl<$Res>;
  $Res call({Email email});
}

/// @nodoc
class __$StateValidatedCopyWithImpl<$Res>
    extends _$InviteUserFormStateCopyWithImpl<$Res>
    implements _$StateValidatedCopyWith<$Res> {
  __$StateValidatedCopyWithImpl(
      _StateValidated _value, $Res Function(_StateValidated) _then)
      : super(_value, (v) => _then(v as _StateValidated));

  @override
  _StateValidated get _value => super._value as _StateValidated;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_StateValidated(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$_StateValidated extends _StateValidated {
  const _$_StateValidated({required this.email}) : super._();

  @override
  final Email email;

  @override
  String toString() {
    return 'InviteUserFormState.validated(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateValidated &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$StateValidatedCopyWith<_StateValidated> get copyWith =>
      __$StateValidatedCopyWithImpl<_StateValidated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email) invalid,
    required TResult Function(Email email) validated,
    required TResult Function(Email email) submitting,
    required TResult Function(Email email, Exception exception) error,
  }) {
    return validated(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
  }) {
    return validated?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInvalid value) invalid,
    required TResult Function(_StateValidated value) validated,
    required TResult Function(_StateSubmitting value) submitting,
    required TResult Function(_StateError value) error,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class _StateValidated extends InviteUserFormState {
  const factory _StateValidated({required Email email}) = _$_StateValidated;
  const _StateValidated._() : super._();

  Email get email;
  @JsonKey(ignore: true)
  _$StateValidatedCopyWith<_StateValidated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StateSubmittingCopyWith<$Res> {
  factory _$StateSubmittingCopyWith(
          _StateSubmitting value, $Res Function(_StateSubmitting) then) =
      __$StateSubmittingCopyWithImpl<$Res>;
  $Res call({Email email});
}

/// @nodoc
class __$StateSubmittingCopyWithImpl<$Res>
    extends _$InviteUserFormStateCopyWithImpl<$Res>
    implements _$StateSubmittingCopyWith<$Res> {
  __$StateSubmittingCopyWithImpl(
      _StateSubmitting _value, $Res Function(_StateSubmitting) _then)
      : super(_value, (v) => _then(v as _StateSubmitting));

  @override
  _StateSubmitting get _value => super._value as _StateSubmitting;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_StateSubmitting(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$_StateSubmitting extends _StateSubmitting {
  const _$_StateSubmitting({required this.email}) : super._();

  @override
  final Email email;

  @override
  String toString() {
    return 'InviteUserFormState.submitting(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateSubmitting &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$StateSubmittingCopyWith<_StateSubmitting> get copyWith =>
      __$StateSubmittingCopyWithImpl<_StateSubmitting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email) invalid,
    required TResult Function(Email email) validated,
    required TResult Function(Email email) submitting,
    required TResult Function(Email email, Exception exception) error,
  }) {
    return submitting(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
  }) {
    return submitting?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInvalid value) invalid,
    required TResult Function(_StateValidated value) validated,
    required TResult Function(_StateSubmitting value) submitting,
    required TResult Function(_StateError value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _StateSubmitting extends InviteUserFormState {
  const factory _StateSubmitting({required Email email}) = _$_StateSubmitting;
  const _StateSubmitting._() : super._();

  Email get email;
  @JsonKey(ignore: true)
  _$StateSubmittingCopyWith<_StateSubmitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StateErrorCopyWith<$Res> {
  factory _$StateErrorCopyWith(
          _StateError value, $Res Function(_StateError) then) =
      __$StateErrorCopyWithImpl<$Res>;
  $Res call({Email email, Exception exception});
}

/// @nodoc
class __$StateErrorCopyWithImpl<$Res>
    extends _$InviteUserFormStateCopyWithImpl<$Res>
    implements _$StateErrorCopyWith<$Res> {
  __$StateErrorCopyWithImpl(
      _StateError _value, $Res Function(_StateError) _then)
      : super(_value, (v) => _then(v as _StateError));

  @override
  _StateError get _value => super._value as _StateError;

  @override
  $Res call({
    Object? email = freezed,
    Object? exception = freezed,
  }) {
    return _then(_StateError(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_StateError extends _StateError {
  const _$_StateError({required this.email, required this.exception})
      : super._();

  @override
  final Email email;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'InviteUserFormState.error(email: $email, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateError &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$StateErrorCopyWith<_StateError> get copyWith =>
      __$StateErrorCopyWithImpl<_StateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email) invalid,
    required TResult Function(Email email) validated,
    required TResult Function(Email email) submitting,
    required TResult Function(Email email, Exception exception) error,
  }) {
    return error(email, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
  }) {
    return error?.call(email, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email)? invalid,
    TResult Function(Email email)? validated,
    TResult Function(Email email)? submitting,
    TResult Function(Email email, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(email, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInvalid value) invalid,
    required TResult Function(_StateValidated value) validated,
    required TResult Function(_StateSubmitting value) submitting,
    required TResult Function(_StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInvalid value)? invalid,
    TResult Function(_StateValidated value)? validated,
    TResult Function(_StateSubmitting value)? submitting,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError extends InviteUserFormState {
  const factory _StateError(
      {required Email email, required Exception exception}) = _$_StateError;
  const _StateError._() : super._();

  Email get email;
  Exception get exception;
  @JsonKey(ignore: true)
  _$StateErrorCopyWith<_StateError> get copyWith =>
      throw _privateConstructorUsedError;
}
