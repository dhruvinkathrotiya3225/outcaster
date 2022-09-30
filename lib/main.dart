import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class _homepageState extends State<homepage> {
  bool isIos = false;
  TextStyle fontstyle =
      TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17);
  TextStyle first = TextStyle(fontSize: 17);
  TextStyle secound = TextStyle(color: Colors.grey, fontSize: 15);
  bool isSwich1 = false;
  bool isSwich2 = false;
  bool isSwich3 = false;
  @override
  Widget build(BuildContext context) {
    return (isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text("settings UI"),
                backgroundColor: Colors.red,
                actions: [
                  Switch.adaptive(
                      value: isIos,
                      onChanged: (val) {
                        setState(() {
                          isIos = val;
                        });
                      })
                ],
              ),
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Common",
                              style: fontstyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.language, color: Colors.grey),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Language",
                                  style: first,
                                ),
                               
                                Text(
                                  "English",
                                  style: secound,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.nature, color: Colors.grey),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Environment",
                                  style: first,
                                ),
                                Text(
                                  "Production",
                                  style: secound,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Account",
                              style: fontstyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.phone, color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Phone number",
                              style: first,
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.email, color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Environment",
                              style: first,
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.assignment_late_rounded,
                                color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Sign out",
                              style: first,
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Security",
                              style: fontstyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.screen_lock_portrait,
                                color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Lock App in background",
                              style: first,
                            ),
                            Spacer(),
                            Switch.adaptive(
                                activeColor: Colors.red,
                                value: isSwich1,
                                onChanged: (val) {
                                  setState(() {
                                    isSwich1 = val;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.fingerprint, color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Use finger Print",
                              style: first,
                            ),
                            Spacer(),
                            Switch.adaptive(
                                activeColor: Colors.red,
                                value: isSwich2,
                                onChanged: (val) {
                                  setState(() {
                                    isSwich2 = val;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.password, color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Change Password",
                              style: first,
                            ),
                            Spacer(),
                            Switch.adaptive(
                                activeColor: Colors.red,
                                value: isSwich3,
                                onChanged: (val) {
                                  setState(() {
                                    isSwich3 = val;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Misc",
                              style: fontstyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.cleaning_services, color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "Termes of service",
                              style: first,
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.source_sharp, color: Colors.grey),
                            SizedBox(width: 30),
                            Text(
                              "open source licenses",
                              style: first,
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              backgroundColor: Colors.white.withOpacity(0.9),
              navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.red,
                middle: Text("Settings UI"),
                trailing: CupertinoSwitch(
                  value: isIos,
                  onChanged: (val) {
                    setState(() {
                      isIos = val;
                    });
                  },
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Common",
                          style: fontstyle.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.wand_rays,
                                  color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Language",
                                style: first,
                              ),
                              Spacer(),
                              Text(
                                "English",
                                style: secound,
                              ),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.nature, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Environment",
                                style: first,
                              ),
                              Spacer(),
                              Text(
                                "Production",
                                style: secound,
                              ),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Account",
                          style: fontstyle.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.phone, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Phone number",
                                style: first,
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.mail, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Email",
                                style: first,
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.nosign, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Sign out",
                                style: first,
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Security",
                          style: fontstyle.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.screen_lock_portrait,
                                  color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Lock App in background",
                                style: first,
                              ),
                              Spacer(),
                              CupertinoSwitch(
                                activeColor: Colors.red,
                                value: isSwich1,
                                onChanged: (val) {
                                  setState(() {
                                    isSwich1 = val;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.fingerprint, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Use finger Print",
                                style: first,
                              ),
                              Spacer(),
                              CupertinoSwitch(
                                activeColor: Colors.red,
                                value: isSwich2,
                                onChanged: (val) {
                                  setState(() {
                                    isSwich2 = val;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.password, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Change Password",
                                style: first,
                              ),
                              Spacer(),
                              CupertinoSwitch(
                                  activeColor: Colors.red,
                                  value: isSwich3,
                                  onChanged: (val) {
                                    setState(() {
                                      isSwich3 = val;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Misc",
                          style: fontstyle.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.cleaning_services, color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "Terms of service",
                                style: first,
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.source_sharp,
                                  color: Colors.grey),
                              SizedBox(width: 30),
                              Text(
                                "open source licenses",
                                style: first,
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
