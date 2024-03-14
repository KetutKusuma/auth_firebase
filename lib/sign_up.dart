import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      'g.png',
      'f.png',
      't.png',
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: h * 0.3,
                    width: w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink[200]!,
                          Colors.blue[200]!,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      // color: Colors.pink[200],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 0.15,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[500],
                          radius: 50,
                          backgroundImage: AssetImage("img/profile.jpeg"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your email id",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.pink[200],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Colors.pink[200],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   // mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     Expanded(child: Container()),
                    //     Text(
                    //       "Forgot your password? ",
                    //       style: TextStyle(fontSize: 20, color: Colors.grey),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: h * 0.08,
                width: w * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.pink[200],
                ),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = (() => Get.back()),
                  text: "Have an account? ",
                  style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: w * 0.16,
              ),
              RichText(
                text: TextSpan(
                  text: "Sign up using the following methods",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Wrap(
                children: List<Widget>.generate(3, (index) {
                  return Container(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[500],
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        backgroundImage: AssetImage("img/" + images[index]),
                      ),
                    ),
                  );
                }),
              )
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 60),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       CircleAvatar(
              //         backgroundColor: Colors.grey[500],
              //         radius: 35,
              //         backgroundImage: AssetImage("img/g.png"),
              //       ),
              //       CircleAvatar(
              //         backgroundColor: Colors.grey[500],
              //         radius: 35,
              //         backgroundImage: AssetImage("img/f.png"),
              //       ),
              //       CircleAvatar(
              //         backgroundColor: Colors.grey[500],
              //         radius: 35,
              //         backgroundImage: AssetImage("img/t.png"),
              //       ),
              //     ],
              //   ),
              // ),
              ,
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
