import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4/global.dart';

void main() {
  runApp(
    search(),
  );
}

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoSearchTextField(
            placeholder: "Search",
          ),
        ),
        ...global.searchproduct
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
