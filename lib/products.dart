import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4/global.dart';

void main() {
  runApp(
    products(),
  );
}

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...global.products
            .map(
              (e) => Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: SizedBox(
                            height: 90,
                            width: 100,
                            child: Image.network(
                              "${e["pic"]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${e["name"]}"),
                            Text(
                              "${e["subtitle"]}",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.add_circled),
                        SizedBox(width: 20),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      indent: 120,
                      endIndent: 10,
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
