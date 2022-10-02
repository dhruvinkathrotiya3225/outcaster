import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4/products.dart';
import 'package:outcaster4/search.dart';

import 'cart.dart';

void main() {
  runApp(
    store(),
  );
}

class store extends StatefulWidget {
  const store({Key? key}) : super(key: key);

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> with TickerProviderStateMixin {
  late TabController _tabController;
  PageController pageController = PageController();
  int currentindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
                icon: Icon(CupertinoIcons.home),
                label: "Products",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: "search",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart),
                label: "cart",
              ),
            ],
          ),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return Column(
                  children: [
                    (currentindex == 1)
                        ? Container()
                        : Container(
                            alignment: Alignment.bottomLeft,
                            height: 130,
                            width: double.infinity,
                            color: Colors.white.withOpacity(0.1),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: (currentindex == 0)
                                  ? Text(
                                      "Cupertino Store",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26),
                                    )
                                  : Text(
                                      "Shopping cart",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26),
                                    ),
                            ),
                          ),
                    IndexedStack(
                      index: currentindex,
                      children: const [
                        products(),
                        search(),
                        cart(),
                      ],
                    )
                  ],
                );
              },
            );
          }),
    );
  }
}
