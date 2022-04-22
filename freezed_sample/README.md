# freezed_sample

## What's this for ?

Freezed is a code-generation package that helps you to create data classes , without us doing anything, the following things:
- `toString()` method
- `==` operator
- `hashCode` getter variable
- `copyWith()` method
- `toJson()` method

## How does code generation works
To get started with code generation, let's you have this dataclass. 
```dart
class User {
  String get name;
  
  @nullable
  String get nickname;
}
```
The `build_runner` tool creates generated source in new files next to your manually maintained source, so we need to leave room for a generated implementation. That means an abstract class:
```dart
// We need to use "part" statement to pull in the generated code
part 'user.g.dart';

abstract class User {
  String get name;
  
  @nullable
  String get nickname;
  
  User._();
  
  // We will replace this part with the codegen file
  factory User() = UserImpl;
}
```

When you run code generation, it will output something like this:
```dart
// user.g.dart
part of user;

class _$User extends User {
  String name;
  String nickname;
  // "_$" marks it as private and generated
  _$User() : super._();
  // Generated implementation goes here.
}
```

Now we can use the generated code in our dataclass.
```dart
part 'user.g.dart';

abstract class User with _$User{
  String get name;
  
  @nullable
  String get nickname;
  
  User._();
  
  factory User({String name, String nickname}) = _$User;
}
```

## Getting Started
1. Add `pubspec.yaml`
```yaml
dependencies:
  freezed_annotation: ^1.1.0
  flutter_riverpod: ^1.0.2
  json_serializable: ^6.0.1

dev_dependencies:
  build_runner: ^2.1.5
  freezed: ^1.1.0
```
2. Optionally, you may want to ignore warnings in `analysis_options.yaml`
```yaml
analyzer:
  exclude:
    - "**/*.g.dart"
    - "**/*.freezed.dart"

errors:
  invalid_annotation_target: ignore
```
3. Create your dataclass, or use [quicktype](https://app.quicktype.io/) to help you generate it

4. Run code generator
```sh
# Flutter
flutter pub run build_runner build --delete-conflicting-outputs

# Dart
dart run build_runner build --delete-conflicting-outputs
```