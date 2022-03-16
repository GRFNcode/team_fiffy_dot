// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mpd/horebuSupermarket.dart';
import 'package:mpd/widget/sidemenu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SupermarketsPage(),
  ));
}

class SupermarketsPage extends StatelessWidget {
  const SupermarketsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        drawer: MenuDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
        ),
        body:SafeArea(
            child: Container(
                width: double.infinity,
                height:MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal:30, vertical:10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget> [
                        Text(
                          "Supermarkets",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter a search term',
                      ),
                    ),
                    Expanded(
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height/4,
                              decoration: BoxDecoration (
                                  image: DecorationImage(
                                      image: AssetImage("images/Component12.png")
                                  )
                              ),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height:60,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder : (context) => HorebuPage()));
                                },
                              ),
                            ),
                            // main page picture
                            Container(
                              height: MediaQuery.of(context).size.height/4,
                              decoration: BoxDecoration (
                                  image: DecorationImage(
                                      image: AssetImage("images/Component13.png")
                                  )
                              ),
                            ),
                            // main page picture
                            Container(
                              height: MediaQuery.of(context).size.height/4,
                              decoration: BoxDecoration (
                                  image: DecorationImage(
                                      image: AssetImage("images/Component14.png")
                                  )
                              ),
                            ),
                          ]
                      )
                    )
                    // main page picture


                  ],

                )
            )
        )
    );
  }
}
