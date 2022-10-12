import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: settings(),
    ),
  );
}

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, i) => ListTile(
              leading: FlutterLogo(),
              title: Text(""),
              subtitle: Text("12:00"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone),
              ),
            ),
        itemCount: 5);
  }
}
