import 'dart:ui';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      // ),
      debugShowCheckedModeBanner: false,
      home: myhome(),
    );
  }
}

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text("hi"),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            )),
        body: body());
  }
}

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text(
              "Hi,Rahel",
              style: TextStyle(
                  color: Color.fromARGB(255, 190, 190, 190),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            width: MediaQuery.of(context).size.width,
            height: 60,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 90,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "you've got",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  Container(
                    child: Text(
                      "8 tasks today",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            width: MediaQuery.of(context).size.width,
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  child: Text(
                    "Ongoing tasks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  width: MediaQuery.of(context).size.width / 1.3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 7,

                  //   margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                  child: Text("See All"),
                )
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "hey",
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            width: MediaQuery.of(context).size.width,
            height: 160,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            width: MediaQuery.of(context).size.width,
            height: 160,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            width: MediaQuery.of(context).size.width,
            height: 160,
          )
        ],
      ),
    );
  }
}
