import 'package:dmaps_v0/Pages/After_Welcome.dart';
import 'package:dmaps_v0/Pages/Home.dart';
import 'package:dmaps_v0/Pages/Pages%20of%20Almadina/choose_of_Almadina.dart';
import 'package:dmaps_v0/Pages/Sign-in.dart';
import 'package:dmaps_v0/Pages/Sign-up.dart';
import 'package:dmaps_v0/Pages/pages%20of%20makkah/alrahmah.dart';
import 'package:dmaps_v0/Pages/pages%20of%20makkah/choose_of_makkah.dart';
import 'package:dmaps_v0/Pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/Welcome',
      routes: {
    '/Welcome' :(context) => const Welcome(),
    '/afterWelcome' :(context) => const AfterWelcome(),
    '/Sign-in' :(context) =>  Sign_in(),
    '/Sign-up' :(context) =>  Sign_up(),
    '/Home' :(context) =>  Home(),
    '/choose_of_makkah' :(context) =>  choose_of_makkah(),
    '/Alrahmah' :(context) =>  Alrahmah(),
    '/choose_of_Almadina' :(context) =>  choose_of_Almadina(),


      },
    );
  }
}