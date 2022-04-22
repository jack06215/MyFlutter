// https://dev.to/elianmortega/how-to-start-using-riverpod-statenotifier-and-freezed-in-your-flutter-applications-181k?utm_source=dormosheio&utm_campaign=dormosheio
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_sample/with_riverpod/email.dart';

part 'invite_user_form_provider.freezed.dart';

final inviteUserFormProvider = AutoDisposeStateNotifierProvider<
    InviteUserFormProvider, InviteUserFormState>(
  (_) => throw UnimplementedError(),
);

@freezed
abstract class InviteUserFormState with _$InviteUserFormState {
  const factory InviteUserFormState.invalid({
    Email? email,
  }) = _StateInvalid;

  const factory InviteUserFormState.validated({
    required Email email,
  }) = _StateValidated;

  const factory InviteUserFormState.submitting({
    required Email email,
  }) = _StateSubmitting;

  const factory InviteUserFormState.error({
    required Email email,
    required Exception exception,
  }) = _StateError;

  const InviteUserFormState._();
}

class InviteUserFormProvider extends StateNotifier<InviteUserFormState> {
  InviteUserFormProvider({
    required this.groupId,
    required this.onSuccess,
    required this.onFail,
  }) : super(const InviteUserFormState.invalid());

  final int groupId;
  final VoidCallback onSuccess;
  final VoidCallback onFail;

  void setEmail(String? value) {
    final email = Email.fromString(value);

    if (email == null) {
      state = state.when(
        invalid: (_) => const InviteUserFormState.invalid(),
        validated: (_) => const InviteUserFormState.invalid(),
        submitting: (_) => state,
        error: (_, __) => const InviteUserFormState.invalid(),
      );
    } else {
      state = state.when(
        invalid: (_) => InviteUserFormState.validated(email: email),
        validated: (_) => InviteUserFormState.validated(email: email),
        submitting: (_) => state,
        error: (_, __) => InviteUserFormState.validated(email: email),
      );
    }
  }

  String? validateEmail(String? value) {
    try {
      Email.validate(value);
      return null;
    } on EmptyEmailException catch (_) {
      return 'Empty email is not allowed';
    } on DoNotMatchRegException catch (_) {
      return 'Invalid email address';
    }
  }

  Future<void> submit() async {
    state.whenOrNull<Future<void>>(
      validated: _submit,
      error: (email, _) async => _submit(email),
    );
  }

  Future<void> _submit(Email email) async {
    try {
      state = InviteUserFormState.submitting(email: email);
      
      // Some operations to be run during submit

      onSuccess();
    } on Exception catch (e) {
      debugPrint(e.toString());
      state = InviteUserFormState.error(
        email: email,
        exception: e,
      );
      onFail();
    }
  }
}
