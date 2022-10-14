import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  runApp(
    chats(),
  );
}

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return (Global.isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ListView.builder(
              itemBuilder: (context, i) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  maxRadius: 30,
                ),
                title: Text(""),
                subtitle: Text(""),
                trailing: Text("12:00"),
              ),
              itemCount: 5,
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Chats",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CupertinoTextField(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Brodcast",
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      ),
                      Spacer(),
                      Text(
                        "New Group",
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      )
                    ],
                  ),
                  Column(
                    children: Global.allContactDetails
                        .map(
                          (e) => Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(height: 10),
                                  CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: CupertinoColors.systemGrey,
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${e["name"]}"),
                                      Text(
                                        "${e["des"]}",
                                        style: TextStyle(
                                            color: CupertinoColors.systemGrey),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text("${e["time"]}")
                                ],
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          );
  }
}
