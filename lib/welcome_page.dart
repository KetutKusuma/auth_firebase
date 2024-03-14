import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 70,
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to the app",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      "a@gmail.com",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
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
                    "Sign out",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: w * 0.08,
              ),
              // Wrap(
              //   children: List<Widget>.generate(3, (index) {
              //     return Container(
              //       padding: EdgeInsets.all(8.0),
              //       child: CircleAvatar(
              //         backgroundColor: Colors.grey[500],
              //         radius: 30,
              //         child: CircleAvatar(
              //           backgroundColor: Colors.white,
              //           radius: 25,
              //           backgroundImage: AssetImage("img/" + images[index]),
              //         ),
              //       ),
              //     );
              //   }),
              // )
              //
            ],
          ),
        ),
      ),
    );
  }
}
