import 'package:flutter/cupertino.dart';

class Global {
  static List allContactDetails = [
    {
      'name': 'Ishan',
      'des': 'Okay',
      'time': '9:33 am',
    },
    {
      'name': 'Dhruvin',
      'des': 'o hello',
      'time': '9:26 am',
    },
  ];

  static List allContactDetailsstatus = [
    {
      'name': 'Darshit',
      'time': '10m Ago',
    },
    {
      'name': 'Meet',
      'time': '20m Ago',
    },
  ];
  static List settingsicon = [
    {
      'name': CupertinoIcons.star_circle,
      'time': 'Statted Message',
    },
    {
      'name': CupertinoIcons.link,
      'time': 'Linked Devices',
    },
    {
      'name': CupertinoIcons.arrow_clockwise_circle,
      'time': 'Account',
    },
    {
      'name': CupertinoIcons.chat_bubble_2,
      'time': 'Chats',
    },
    {
      'name': CupertinoIcons.news,
      'time': 'Notifications',
    },
    {
      'name': CupertinoIcons.rectangle_split_3x1,
      'time': 'Palyment',
    },
  ];
  static List allContactDetailscalls = [
    {
      'name': 'Darshit',
      'time': 'Incomming',
    },
    {
      'name': 'Meet',
      'time': 'missed',
    },
    {
      'name': 'Vraj',
      'time': 'incomming',
    },
    {
      'name': 'Ishan',
      'time': 'incomming',
    },
    {
      'name': 'Ashish',
      'time': 'incomming',
    },
  ];

  static bool isIos = false;
}
