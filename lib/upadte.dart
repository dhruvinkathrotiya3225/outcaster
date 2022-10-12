import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  runApp(
    MaterialApp(
      home: update(),
    ),
  );
}

class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Discover AR Gaming",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              Text(
                "See all",
                style: TextStyle(color: CupertinoColors.systemBlue),
              ),
            ],
          ),
          ...global.update
              .map(
                (e) => Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("${e["pic"]}"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 20),
                              Text("${e["name"]}"),
                              Text(
                                "${e["des"]}",
                                style: TextStyle(
                                    color: CupertinoColors.systemGrey),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Update",
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
