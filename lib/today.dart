import 'package:flutter/material.dart';

void main() {
  runApp(
    today(),
  );
}

class today extends StatefulWidget {
  const today({Key? key}) : super(key: key);

  @override
  State<today> createState() => _todayState();
}

class _todayState extends State<today> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 500,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 5),
        ],
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdvJ8YTXK4sGW_7-Q7x-P2mEtLTlYOCmRw1g&usqp=CAU"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SERIOUSLY?",
              style: TextStyle(color: Colors.grey.shade300, fontSize: 21),
            ),
            Text(
              "Bizarre Sports Games",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
