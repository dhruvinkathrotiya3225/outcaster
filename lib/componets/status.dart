import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calls(),
    ),
  );
}

class calls extends StatefulWidget {
  const calls({Key? key}) : super(key: key);

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, i) => ListTile(
              leading: FlutterLogo(),
              title: Text(""),
              subtitle: Text("12:00"),
            ),
        itemCount: 5);
  }
}
