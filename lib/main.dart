import 'package:flutter/material.dart';

void main() {
  runApp(
    const stepper(),
  );
}

class stepper extends StatefulWidget {
  const stepper({Key? key}) : super(key: key);

  @override
  State<stepper> createState() => _stepperState();
}

class _stepperState extends State<stepper> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stepper App"),
          backgroundColor: Colors.red,
        ),
        body: Stepper(
          currentStep: currentindex,
          controlsBuilder: (context, details) {
            return Container();
          },
          steps: [
            Step(
              title: const Text("Sign Up"),
              content: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "full name",
                      icon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email id",
                      icon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "comfirm password",
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            currentindex++;
                          });
                        },
                        child: const Text("Continue"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Step(
              title: const Text("Log in"),
              content: Container(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "User name",
                        icon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "password",
                        icon: Icon(Icons.lock),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, onPrimary: Colors.white),
                          onPressed: () {
                            setState(() {
                              currentindex++;
                            });
                          },
                          child: const Text("Continue"),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              currentindex--;
                            });
                          },
                          child: const Text(
                            "cancel",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Step(
              state: StepState.indexed,
              title: const Text("home"),
              content: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
