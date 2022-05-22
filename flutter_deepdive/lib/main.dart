import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Positioned Flutter Logo"),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.grey[200],
        child: Stack(
          children: const [
            Positioned(
              left: 20,
              top: 20,
              width: 50,
              height: 50,
              child: FlutterLogo(),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: FlutterLogo(),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: FlutterLogo(),
            ),
            Positioned(
              left: 100,
              right: 20,
              top: 100,
              bottom: 20,
              child: FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
