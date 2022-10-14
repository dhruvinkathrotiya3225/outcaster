import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Text("Dhruvin"),
                    Text(
                      "All is well",
                      style: TextStyle(color: CupertinoColors.systemGrey),
                    ),
                  ],
                ),
                Spacer(),
                Icon(CupertinoIcons.qrcode),
              ],
            ),
            SizedBox(height: 50),
            Column(
              children: Global.settingsicon
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(height: 10),
                              Icon(e["name"]),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${e["time"]}"),
                                ],
                              ),
                              Spacer(),
                              Icon(CupertinoIcons.right_chevron),
                            ],
                          ),
                        ],
                      ),
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
