// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

// import 'package:dmaps_v0/video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
class Alrahmah extends StatelessWidget {
  const Alrahmah({super.key});

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
                  Navigator.pushNamed(context, "/choose_of_makkah");
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
                        "Alrahmah",
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
                      height: 20,
                    ),
                    Text(
                      "3D model of the Mountain of Light",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      child:ModelViewer(
          backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
          src: 'image/alrahmah.glb',
          alt: 'A 3D model of an astronaut',
          autoRotate: true,
          ar: true,
          iosSrc: 'image/alrahmah.glb',
          disableZoom: true,
        ) ,),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        child: Text(
                          """Mount of Mercy: A Prominent Religious Landmark in Mecca
                  
Geographical Location:

Mount of Mercy is located in the plains of Arafat, which is part of the Arafat area in Mecca.
                  
Religious Significance:

Mount of Mercy is associated with the Hajj rituals, as the Prophet Muhammad (peace be upon him) stood here during his famous Farewell Sermon. It is believed that prayers made at this place are answered.
                  
Name:

It is called Mount of Mercy to signify divine mercy and forgiveness.
                  
Historical Event:

On the Day of Arafat, pilgrims gather at Mount of Mercy to pray and supplicate, a day when Allah forgives the sins of Muslims.
                  
Symbolism:

The name "Mount of Mercy" reflects the spiritual meanings and divine mercy inherent in the Hajj.
                  
Historical Stories and Information:
                  
.  Farewell Sermon: The Prophet Muhammad (peace be upon him) delivered his Farewell Sermon during the Hajj of 10 AH at Mount of Mercy, outlining the rights and duties of Muslims.

.  Standing at Arafat: Standing at Arafat, including Mount of Mercy, is one of the most important rituals of Hajj, where pilgrims dedicate this day to prayers and seeking forgiveness.
                  
Mount of Mercy symbolizes mercy and forgiveness, holding a special place in the hearts of Muslims during the performance of the Hajj rituals.""",
                          style: TextStyle(fontSize: 20, color: Colors.brown),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
