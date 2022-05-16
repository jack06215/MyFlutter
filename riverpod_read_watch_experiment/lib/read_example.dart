import 'package:riverpod/riverpod.dart';

class Logger {
  const Logger(this.id);

  final String id;
}

final idStateProvider = StateProvider<String>((ref) => '');
final logProvider = StateProvider<Logger>((ref) {
  print('--- instance created -- ');
  final id = ref.read(idStateProvider);
  return Logger(id);
});

void readExample() {
  final ref = ProviderContainer();

  final logger = ref.read(logProvider);

  print('Step 1a: ${logger.id}');
  print('Strp 1b: ${ref.read(logProvider).id}');

  ref.read(idStateProvider.notifier).update((_) => 'aaa');

  print('Step 2a: ${logger.id}');

  print('Step 3b ${ref.read(logProvider).id}');
  print('Step 3c ${ref.read(logProvider).id}');

  ref.refresh(logProvider);

  print('Step 4a: ${logger.id}');
  print('Step 4b: ${ref.read(logProvider).id}');
  print('Step 4c: ${ref.read(logProvider).id}');
}
