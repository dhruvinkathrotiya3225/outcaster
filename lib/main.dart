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
  int currentindex = 0;
  String gender = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Edit your profile"),
        ),
        body: Stepper(
          currentStep: currentindex,
          controlsBuilder: (context, details) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentindex++;
                    });
                  },
                  child: const Text("next"),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      currentindex--;
                    });
                  },
                  child: const Text("cancel"),
                ),
              ],
            );
          },
          steps: [
            Step(
              title: Text("Profile Image"),
              content: Container(
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            Step(
              title: Text("Name"),
              content: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your name"),
                ),
              ),
            ),
            Step(
              title: Text("Phone"),
              content: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your phone number"),
                ),
              ),
            ),
            Step(
              title: Text("Email"),
              content: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your email address"),
                ),
              ),
            ),
            Step(
              title: Text("DOB"),
              content: Container(
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your birth date"),
                ),
              ),
            ),
            Step(
              title: Text("Gender"),
              content: Column(
                children: [
                  RadioListTile(
                    title: Text("Male"),
                    groupValue: gender,
                    value: "male",
                    onChanged: (val) {
                      setState(() {
                        gender = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("female"),
                    groupValue: gender,
                    value: "female",
                    onChanged: (val) {
                      setState(() {
                        gender = val!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Step(
              title: Text("Current location"),
              content: Container(
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your location"),
                ),
              ),
            ),
            Step(
              title: Text("Nationalites"),
              content: Container(
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your nationalites"),
                ),
              ),
            ),
            Step(
              title: Text("Religion"),
              content: Container(
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your religion"),
                ),
              ),
            ),
            Step(
              title: Text("Language"),
              content: Container(
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "enter your  language"),
                ),
              ),
            ),
            Step(
              title: Text("Biography"),
              content: Container(
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "enter biogrphy"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
