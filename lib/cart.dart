import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    cart(),
  );
}

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  DateTime initialDate = DateTime.now();
  String date = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CupertinoTextField.borderless(
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.person),
                ),
                placeholderStyle: TextStyle(
                  color: CupertinoColors.black.withOpacity(0.3),
                ),
                placeholder: "name",
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              CupertinoTextField.borderless(
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.mail),
                ),
                placeholderStyle: TextStyle(
                  color: CupertinoColors.black.withOpacity(0.3),
                ),
                placeholder: "Email",
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              CupertinoTextField.borderless(
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.location),
                ),
                placeholderStyle: TextStyle(
                  color: CupertinoColors.black.withOpacity(0.3),
                ),
                placeholder: "Location",
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              CupertinoTextField.borderless(
                prefix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.time),
                ),
                placeholderStyle: TextStyle(
                  color: CupertinoColors.black.withOpacity(0.3),
                ),
                placeholder: "Delivery Time",
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.blue,
          child: CupertinoDatePicker(
            backgroundColor: CupertinoColors.white,
            initialDateTime: initialDate,
            onDateTimeChanged: (val) {},
          ),
        ),
      ],
    );
  }
}
