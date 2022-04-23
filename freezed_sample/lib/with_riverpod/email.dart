import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

@immutable
class Email {
  factory Email(String? value) {
    return Email._(
      validate(value),
    );
  }
  const Email._(this.value);

  static Email? fromString(String? value) {
    try {
      return Email(value);
    } on EmptyEmailException {
      return null;
    } on DoNotMatchRegException {
      return null;
    }
  }

  static String validate(String? value) {
    if (value == null || value.isEmpty) {
      throw const EmptyEmailException();
    }

    regExp(value);
    return value;
  }

  static void regExp(String value) {
    if (!RegExp(r'^.+@.+$').hasMatch(value)) {
      throw DoNotMatchRegException(value);
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Email &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  final String value;
}

class EmptyEmailException extends FormatException {
  const EmptyEmailException() : super('Email should not to be empty');
}

class DoNotMatchRegException extends FormatException {
  const DoNotMatchRegException(String email)
      : super(
          "Doesn't match the regular expression",
          email,
        );
}
