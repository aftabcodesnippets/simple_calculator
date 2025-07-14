// ignore_for_file: sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nf/ui_helper/ui.dart';
import 'package:intl/intl.dart';
import 'package:nf/widgets/roundedbutton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var counter1 = 0;
  var c1 = TextEditingController();
  var c2 = TextEditingController();
  double a =0;
  double b=0;
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Calculations',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 400,
                  color: Color(0xFF2E3A59),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 300,

                          child: TextField(
                            controller: c1,
                            cursorColor: Colors.amber,
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),

                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Enter 1st Number',
                              hintStyle: TextStyle(
                                color: Color(0xFFB0BEC5),
                                fontSize: 20,
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 4),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                  color: Colors.cyan,
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,

                        child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          controller: c2,
                          cursorColor: Colors.amber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Enter 2st Number',
                            hintStyle: TextStyle(
                              color: Color(0xFFB0BEC5),
                              fontSize: 20,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.cyan,
                                width: 4,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'Result : $result',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 400,

                color: Color(0xFF455A64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 80,

                      child: ElevatedButton(
                        onPressed: () {
                        a =double.tryParse(c1.text)??0;
                        b =double.tryParse(c2.text)??0;
                        setState(() {
                          
                          result ='${a+b}';
                          

                          
                        });


                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1976D2),
                          shape: RoundedRectangleBorder(),
                        ),

                        child: Text(
                          'ADD',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,

                      child: ElevatedButton(
                        onPressed: () {
                          a =double.tryParse(c1.text)??0;
                        b =double.tryParse(c2.text)??0;
                        setState(() {
                          result ='${a-b}';
                        });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1976D2),
                          shape: RoundedRectangleBorder(),
                        ),

                        child: Text(
                          'SUB',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          a =double.tryParse(c1.text)??0;
                        b =double.tryParse(c2.text)??0;
                        setState(() {
                          result ='${a*b}';
                        });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1976D2),
                          shape: RoundedRectangleBorder(),
                        ),

                        child: Text(
                          'MUL',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          a =double.tryParse(c1.text)??0;
                        b =double.tryParse(c2.text)??0;
                        setState(() {
                          if(b==0){
                            result ="Can't divide by zero";
                           } else
                          result ='${a/b}';
                        });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1976D2),
                          shape: RoundedRectangleBorder(),
                        ),

                        child: Text(
                          'DIV',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: 160,
            left: 80,
            child: SizedBox(
              width: 250,
              height: 80,
              child: Card(
                elevation: 20,

                color: Color(0xFF00C853), // success green
                shadowColor: Color(0xFF00C853),
                child: Center(
                  child: Text(
                    'CALCULATOR...!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MyFonts',
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







