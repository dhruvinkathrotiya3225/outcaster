import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp/componets/global.dart';

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
    return (Global.isIos == false)
        ? Container(
            height: 500,
            child: ListView.builder(
                itemBuilder: (context, i) => ListTile(
                      leading: FlutterLogo(),
                      title: Text(""),
                      subtitle: Text("12:00"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.phone),
                      ),
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
                      Text(
                        "Edit",
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      ),
                      Spacer(),
                      Icon(CupertinoIcons.phone),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Calls",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: Global.allContactDetailscalls
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
                                  Spacer(),
                                  Icon(CupertinoIcons.phone),
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
