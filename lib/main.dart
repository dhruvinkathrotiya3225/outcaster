import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster5/game.dart';
import 'package:outcaster5/today.dart';
import 'package:outcaster5/upadte.dart';

import 'apps.dart';

void main() {
  runApp(
    home(),
  );
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoTabScaffold(
        backgroundColor: Colors.white,
        tabBar: CupertinoTabBar(
          onTap: (val) {
            setState(() {
              currentindex = val;
            });
          },
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book_circle_fill), label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.game_controller), label: "Game"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.app_badge), label: "Apps"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rectangle), label: "Update"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (currentindex == 0)
                                ? Text(
                                    "WEDNESDAY, SEPTEMBER 12",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  )
                                : Text(""),
                            SizedBox(height: 5),
                            (currentindex == 0)
                                ? Text(
                                    "Today",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                  )
                                : Text(""),
                            (currentindex == 1)
                                ? Text(
                                    "Games",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                  )
                                : Text(" "),
                          ],
                        ),
                        SizedBox(height: 50),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media.istockphoto.com/photos/productivity-powered-by-digital-technology-picture-id1330965067?b=1&k=20&m=1330965067&s=170667a&w=0&h=ys_MV3zYkn2HJCtHC4s_03Sz1MUC2BZv6PcDdk__XSc="),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IndexedStack(
                      index: currentindex,
                      children: [
                        today(),
                        gamepage(),
                        apps(),
                        update(),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
