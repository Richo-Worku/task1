import 'package:flutter/material.dart';
import 'home.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 29,
                        ),
                        height: 170,
                        width: MediaQuery.of(context).size.width / 7,
                        color: Colors.white,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(25, 15, 0, 0),
                              child: Image.asset(
                                'assets/images/undraw_Voice_interface_re_206s (1).png',
                              ),
                            )
                          ],
                        ),
                        //   padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 170,
                        width: MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width / 7),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  color: Colors.blue,
                ),
                Container(
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                ),
                Form(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  //  color: Colors.white,

                                  ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(29),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.0)),
                                hintText: "የእርስዎ ኢሜይል ያስገቡ",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (values) {
                                if (values == null || values.isEmpty) {
                                  return "please enter your email";
                                }
                              },
                              // onSaved: (value) => _email = value.toString(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  //  color: Colors.white,

                                  ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(29),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.0)),
                                hintText: "የእርስዎ ኢሜይል ያስገቡ",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (values) {
                                if (values == null || values.isEmpty) {
                                  return "please enter your email";
                                }
                              },
                              //    onSaved: (value) => _email = value.toString(),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Colors.black),
                                    height: 50.0,
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: Center(
                                        child: ElevatedButton(
                                      //  color: Colors.blueAccent,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => home()));
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0),
                                      ),
                                    )),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
