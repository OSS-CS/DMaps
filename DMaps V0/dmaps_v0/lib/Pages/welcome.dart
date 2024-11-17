// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 103, 65, 53),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              child: Image.asset("image/logo 3.png"),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              margin: EdgeInsets.only(top: 20),
              height: 550,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text(
                    "Welcome to \n \t  DMaps",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50,),
                  Center(
                      child: Text(
                    "Explore Saudi Arabia's Islamic \n                   history:",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                  )),
                SizedBox(height: 15,),

                  Center(
                      child: Text(
                    " interactive tours, rich information,\n and detailed directions.",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
              height: 90,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/afterWelcome');
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 103, 65, 53),),
                      padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))))),
            ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
