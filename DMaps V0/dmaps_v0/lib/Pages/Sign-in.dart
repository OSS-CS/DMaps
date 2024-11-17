// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Sign_in extends StatelessWidget {
  const Sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/afterWelcome");
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(4, 11, 27, 1),
                ),
              )),
        ),
        title: const Text("Sign-in",
            style: TextStyle(fontSize: 40, color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 103, 65, 53),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 103, 65, 53),
        child: SingleChildScrollView(
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
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome to \n \t  DMaps",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                      SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 103, 65, 53),
                            borderRadius: BorderRadius.circular(20)),
                        width: 350,
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: " Email : ",
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 103, 65, 53),
                            borderRadius: BorderRadius.circular(20)),
                        width: 350,
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: " Password : ",
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ))),
                            Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Forget Paswword?" , style: TextStyle(fontSize: 13, color: Colors.black , fontWeight: FontWeight.bold),))
                    ],
                  ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Home');
                          },
                          child: Text(
                            "Sign-in",
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 103, 65, 53),
                              ),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(14)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(9))))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/sign-up");
                        },
                        child: Text(
                          " Sign-up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
