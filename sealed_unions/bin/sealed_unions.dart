import 'package:sealed_unions/weather_state.dart';
import 'package:sealed_unions/personnel_state.dart';

void main(List<String> arguments) {
  final widgetState = WeatherState.loaded(80);
  final fakeWidget = widgetBuilder(widgetState);
  print(widgetState);
  print(fakeWidget);

  final company = Company(
    name: "asdf",
    director:
        Director(name: "asdfjkl", assistant: Assistant(age: 30, name: '343')),
  );
  final newCompany = company.copyWith.director.assistant!(name: 'John Smith');
  print(newCompany);
}

String widgetBuilder(WeatherState state) {
  return state.when(
      initial: () => "Initial Widget",
      loading: () => "Loading Widget...",
      loaded: (celcius) => "The temperature is $celcius");
}
