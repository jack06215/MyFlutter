import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:tictactoe/screen/tiles.dart';

void main() {
  runApp(ProviderScope(child: TicTacToe()));
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tic Tac Toe"),
        ),
        body: Tiles(),
      ),
    );
  }
}
