import 'package:flutter/material.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Sorry, We couldn't found your page",
        style: TextStyle(color: Colors.red, fontSize: 12),
      ),
    );
  }
}
