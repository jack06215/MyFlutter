# freezed_sample

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