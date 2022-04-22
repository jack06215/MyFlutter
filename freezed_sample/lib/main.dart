import 'package:flutter/material.dart';
import 'package:freezed_sample/my_dataclass.dart';
import 'package:freezed_sample/my_union.dart';
import 'package:freezed_sample/my_shared_property.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      final data =
          MyClass(greeting: 'hello', instructions: ['freezed', 'MyClass']);
      final data_json = myClassToJson(data);
      final data_str = myClassFromJson(data_json);
      // print(data);
      // print(data_json);
      // print(data_str);

      const unionExample = Union.error("oops");
      print(
        // `when` requires all callbacks to be not null
        unionExample.when(
          (value) => '$value',
          loading: () => 'loading',
          error: (message) => 'Error: $message',
          complex: (a, b) => 'complex $a $b',
        ),
      );

      var example = SharedProperty.person(name: 'Remi', age: 24);
      // OK, `name` is shared between both .person and .city constructor
      print(example.name); // Remi
      example = SharedProperty.city(name: 'London', population: 8900000);
      print(example.name); // London
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
