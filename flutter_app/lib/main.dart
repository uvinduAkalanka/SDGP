import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold Widget
      home: Scaffold(
        // appBar:  AppBar(
        //   title: Text('GFG'),
        // ),
        body: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 30.0,
                top: 30.0,
                child: Container(
                  width: 110.0,
                  height: 30.0,
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                  decoration: new BoxDecoration(
                      color: Color.fromARGB(255, 83, 192, 45),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'About Us',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
              Positioned(
                  left: 30.0,
                  top: 100.0,
                  child: Container(
                    width: 250.0,
                    height: 300.0,
                    child: Text(
                      'Thank you for trying this application. This application is used to detect deceases and pests in paddy leaves with image recognitoin technologies',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('This application can be used by anyone who wants to detect deceases and pests in their paddy field. With that information, they an easily control pests with the relevant chemicals to eradicate them.',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      )

                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                        child: Text('© 2022 INFERNO. All Rights Reserved',
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18.0),
                          textAlign: TextAlign.center,
                        )

                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                        child: Text('Click here to see Terms and Conditions',
                          style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize: 15.0),
                          textAlign: TextAlign.center,
                        )

                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                        child: TextButton(
                          child: Text("Rate Us"),
                          style: TextButton.styleFrom(
                            primary: Colors.white,  //Text Color
                            backgroundColor: Colors.green, //Button Background Color
                          ),
                          onPressed: () {},
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                        child: Text('For More Information',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        )

                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                                child: Text('Telephone :',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
                                  textAlign: TextAlign.center,
                                )

                            ),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                                child: Text('0112729729',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
                                  textAlign: TextAlign.center,
                                )

                            ),
                          ],
                        )

                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text('Email :',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
                                  textAlign: TextAlign.center,
                                )

                            ),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text('team.paddyx@gmail.com',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
                                  textAlign: TextAlign.center,
                                )

                            ),
                          ],
                        )

                    ),

                  ],
                )
              ),

            ],
          ),


          // child: Text('Hello World'),
        ),

      )
    );
  }
}


