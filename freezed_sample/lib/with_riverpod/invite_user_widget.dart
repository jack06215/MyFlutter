import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_sample/with_riverpod/invite_user_form_provider.dart';

class InviteUserToGroupForm extends ConsumerWidget {
  const InviteUserToGroupForm({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  final int groupId;
  static Route route({
    required int groupId,
  }) {
    return MaterialPageRoute(
      builder: (BuildContext context) => ProviderScope(
        overrides: [
          inviteUserFormProvider.overrideWithValue(
            InviteUserFormProvider(
              groupId: groupId,
              onSuccess: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Invited'),
                  ),
                );
                Navigator.of(context).pop();
              },
              onFail: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Oops, something went wrong'),
                  ),
                );
              },
            ),
          ),
        ],
        child: InviteUserToGroupForm(groupId: groupId),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(inviteUserFormProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Title'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 16),
          Text('Email Address'),
          const SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your email address',
            ),
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            onChanged: ref.read(inviteUserFormProvider.notifier).setEmail,
            validator: ref.read(inviteUserFormProvider.notifier).validateEmail,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(
              onPressed: state.whenOrNull<VoidCallback?>(
                validated: (_) =>
                    ref.read(inviteUserFormProvider.notifier).submit,
              ),
              child: state.mapOrNull(
                    submitting: (_) => const Text('Inviting...'),
                  ) ??
                  Text('Invite'),
            ),
          ),
        ],
      ),
    );
  }
}
