import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp/componets/global.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: status(),
    ),
  );
}

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return (Global.isIos == false)
        ? Container(
            height: 500,
            child: ListView.builder(
                itemBuilder: (context, i) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      title: Text(""),
                      subtitle: Text("12:00"),
                    ),
                itemCount: 5),
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
                        "Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: CupertinoColors.systemGrey,
                        maxRadius: 30,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Status"),
                          Text(
                            "Add to my Status",
                            style: TextStyle(color: CupertinoColors.systemGrey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(CupertinoIcons.camera),
                      SizedBox(width: 20),
                      Icon(CupertinoIcons.wrench),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Recent Uppdate",
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      ),
                    ],
                  ),
                  Column(
                    children: Global.allContactDetailsstatus
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
                                        "${e["time"]}",
                                        style: TextStyle(
                                            color: CupertinoColors.systemGrey),
                                      ),
                                    ],
                                  ),
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
