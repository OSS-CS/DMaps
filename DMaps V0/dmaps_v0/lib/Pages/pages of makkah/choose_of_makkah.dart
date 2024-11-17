// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class choose_of_makkah extends StatelessWidget {
  const choose_of_makkah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.brown,
        color: Colors.grey[300],
        activeColor: Colors.grey[300],
        gap: 8,
        onTabChange: (index) {
            switch (index) {
                case 0:
                Navigator.pushNamed(context, '/profile');
                  break;
                case 1:
                Navigator.pushNamed(context, '/Home');
                  break;
                case 2:
                Navigator.pushNamed(context, '/Settings');
                  break;
              }
        },
        tabs: const [
          GButton(
            icon: Icons.person_2,
            iconSize: 35,
          ),
          GButton(icon: Icons.home, iconSize: 35),
          GButton(icon: Icons.settings, iconSize: 35),
        ],
      ),
      appBar: AppBar(
          leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Home");
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(4, 11, 27, 1),
                ),
              )),
        ),
        backgroundColor: Colors.brown,
        
        title: Center(
            child: Container(
              margin: EdgeInsets.only(right: 60),
              child: Text(
                        "Makkah",
                        style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
            )),
        automaticallyImplyLeading: false,

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 103, 65, 53),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [          
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              margin: EdgeInsets.only(top: 20),
              height: 650,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ), 
                    Text(
                      "Top viewed",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.pushNamed(context, '/Alrahmah');
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                                height: 185,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset("image/alnoor.png")),
                            Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  "Alrahmah mountain",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      // onTap: (){
                      //     Navigator.pushNamed(context, '/Home');
                      // },
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                                height: 185,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset("image/thoor.png")),
                            Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  "AL-Thoor mountain",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      // onTap: (){
                      //     Navigator.pushNamed(context, '/Home');
                      // },
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                                height: 170,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset("image/ALmogammas.png")),
                            Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  "ALmogammas",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
