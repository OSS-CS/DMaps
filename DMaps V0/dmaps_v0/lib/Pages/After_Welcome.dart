import 'package:flutter/material.dart';

class AfterWelcome extends StatelessWidget {
  const AfterWelcome({super.key});

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
                  SizedBox(height: 150,),
                  Container(
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Sign-in');
                  },
                  child: Text(
                    "Sign-in",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 103, 65, 53),),
                      padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))))),
            ),
                
                  SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Sign-up');
                  },
                  child: Text(
                    "Sign-up",
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
