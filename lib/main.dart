import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componets/chats.dart';
import 'componets/call.dart';
import 'componets/status.dart';

void main() {
  runApp(
    MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    ),
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
    const calls(),
    const settings(),
  ];

  bool isshow = false;
  late TabController _tabController;
  PageController pageController = PageController();

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "main": (context) => homepage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          actions: [
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
    );
  }
}
