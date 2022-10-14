import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componets/chats.dart';
import 'componets/call.dart';
import 'componets/global.dart';
import 'componets/settings.dart';
import 'componets/status.dart';

void main() {
  runApp(
    homepage(),
  );
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with TickerProviderStateMixin {
  List pages = [
    const chats(),
    const status(),
    const calls(),
  ];
  bool isshow = false;
  late TabController _tabController;
  PageController pageController = PageController();

  int currentindex = 0;
  int currentindextabbar = 0;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "main": (context) => homepage(),
            },
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Whatsapp"),
                actions: [
                  Switch(
                      value: Global.isIos,
                      onChanged: (val) {
                        setState(() {
                          Global.isIos = val;
                        });
                      }),
                  Icon(Icons.search),
                ],
                backgroundColor: Colors.green,
                bottom: TabBar(
                  controller: _tabController,
                  onTap: (val) {
                    setState(() {
                      pageController.animateToPage(
                        val,
                        duration: const Duration(microseconds: 400),
                        curve: Curves.easeInOutBack,
                      );
                    });
                  },
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  tabs: const [
                    Tab(
                      child: Text("chats"),
                    ),
                    Tab(
                      child: Text("Status"),
                    ),
                    Tab(
                      child: Text("Call"),
                    ),
                  ],
                ),
              ),
              floatingActionButton: (_tabController.index == 0)
                  ? FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {},
                      child: const Icon(Icons.chat),
                    )
                  : null,
              body: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (val) {
                  setState(() {
                    _tabController.animateTo(val);
                  });
                },
                itemBuilder: (context, i) => pages[i],
                itemCount: pages.length,
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: const Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: CupertinoColors.black,
                  ),
                ),
                trailing: CupertinoSwitch(
                    value: Global.isIos,
                    onChanged: (val) {
                      setState(() {
                        Global.isIos = val;
                      });
                    }),
                backgroundColor: CupertinoColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IndexedStack(
                    index: currentindex,
                    children: [
                      status(),
                      calls(),
                      Container(),
                      chats(),
                      settings(),
                    ],
                  ),
                  Spacer(),
                  CupertinoTabBar(
                    currentIndex: currentindex,
                    onTap: (val) {
                      setState(() {
                        currentindex = val;
                      });
                    },
                    backgroundColor: CupertinoColors.white,
                    height: 60,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.circle_bottomthird_split),
                        label: "Status",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.phone),
                        label: "Call",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.camera),
                        label: "Camera",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.chat_bubble_2),
                        label: "chat",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings),
                        label: "Settings",
                      ),
                    ],
                  ),
                ],
              ),
              backgroundColor: CupertinoColors.white,
            ),
          );
  }
}
