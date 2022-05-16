// https://stackoverflow.com/questions/64764169/flutter-what-is-the-difference-buttonstyle-and-stylefrom
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: DisableEnableCheckbox(),
    );
  }
}

class DisableEnableCheckbox extends StatefulWidget {
  const DisableEnableCheckbox({Key? key}) : super(key: key);

  @override
  _DisableEnableCheckboxState createState() => _DisableEnableCheckboxState();
}

class _DisableEnableCheckboxState extends State<DisableEnableCheckbox> {
  bool _isChecked = true;
  bool _isEnabled = true;

  _onChanged() {
    setState(() {
      _isEnabled = !_isEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Disable & Enable Checkbox"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: CheckboxListTile(
                title: const Text("Checkbox Text"),
                value: _isChecked,
                onChanged: _isEnabled
                    ? (val) {
                        setState(() {
                          _isChecked = val ?? false;
                        });
                      }
                    : null,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: _onChanged,
                child: Text(
                  _isEnabled ? "Disable" : "Enable",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
