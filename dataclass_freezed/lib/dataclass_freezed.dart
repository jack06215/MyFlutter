import 'package:dataclass_freezed/my_dataclass.dart';

int calculate() {
  var greeting = Welcome(
      greeting: "hello jack", instructions: ["Nice to meet you", "Thank you"]);
  print(welcomeToJson(greeting));

  var greetingDs =
      '''{
    "greeting": "hello jack",
    "instructions": ["Nice to meet you", "Thank you"]
  }''';
  print(welcomeFromJson(greetingDs));
  return 6 * 7;
}
