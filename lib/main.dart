// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'sign.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: loginpage());
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: log(),
    );
  }
}

class log extends StatefulWidget {
  const log({Key? key}) : super(key: key);

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  late bool _isLoading;
  void initState() {
    super.initState();
    _isLoading = false;
  }

  void saved() async {
    (_formKey.currentState!.save());
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);

      print("someone login");
      Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
    } catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              //  title: Text('Material Dialog'),
              content: Text('Login Failed.Please try again'),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      _dismissDialog();
                    },
                    child: Text('Close')),
              ],
            );
          });
    }
  }

  _dismissDialog() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset('assets/images/undraw_task_list_6x9d.png'),
              ),
              flex: 2,
            ),
            Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: MediaQuery.of(context).size.width,
                          height: 70.0,
                          color: Colors.white,
                          // child: Center(
                          child: Text(
                            "በመለያ ግባ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          //  ),
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 70.0,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            style: TextStyle(
                                //  color: Colors.white,

                                ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2.0)),
                              hintText: "የእርስዎ ኢሜይል ያስገቡ",
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            validator: (values) {
                              if (values == null || values.isEmpty) {
                                return "please enter your email";
                              }
                            },
                            onSaved: (value) => _email = value.toString(),
                          ),
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          height: 40.0,
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 70.0,
                          child: TextFormField(
                              onSaved: (value) {
                                _password = value.toString();
                              },
                              validator: (values) {
                                if (values == null || values.isEmpty) {
                                  return "please enter your password";
                                } else {
                                  return null;
                                }
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  //  color: Colors.white,

                                  ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0)),
                                hintText: "የይለፍ ቃልዎን ያስገቡ",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 3),
                                    borderRadius: BorderRadius.circular(15)),
                              )),
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          height: 30.0,
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Colors.black,
                                      ),
                                      height: 50.0,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Center(
                                          child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black, // background
                                          onPrimary: Colors.white, // foreground
                                        ), //  color: Colors.blueAccent,
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            setState(() {
                                              _isLoading = _isLoading;
                                            });
                                            saved();
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) => home()));
                                          } else {
                                            return null;
                                          }
                                        },
                                        child: Text(
                                          "Signin",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                      )),
                                    ),
                                  ))),
                          Flexible(
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Colors.black,
                                      ),
                                      height: 50.0,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Center(
                                          child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black, // background
                                          onPrimary: Colors.white, // foreground
                                        ),
                                        //  color: Colors.blueAccent,
                                        onPressed: () {
                                          setState(() {
                                            _isLoading = _isLoading;
                                          });
                                          //    saved();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      sign()));
                                        },
                                        child: Text(
                                          "Signup",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                      )),
                                    ),
                                  )))
                        ],
                      ),
                    ],
                  ),
                  //    color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
