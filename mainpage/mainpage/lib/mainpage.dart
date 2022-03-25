// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'navbar.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);


  Future gallery_upload() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }
  Future open_camera() async {
    await ImagePicker().pickImage(source: ImageSource.camera);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),

      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/solidgreen.png'),
                fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.005, -0.6),
              child: MaterialButton(
                onPressed: () => open_camera(),
                color: Colors.white,
                textColor: Colors.black,
                child: Icon(
                  Icons.camera_alt,
                  size: 70,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),  
            
            
            Container(
              alignment: Alignment(0.005, -0.1),
              child: MaterialButton(
                onPressed: () => gallery_upload(),
                color: Colors.white,
                textColor: Colors.black,
                child: Icon(
                  Icons.upload_outlined,
                  size: 70,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),

            Container(
              alignment: Alignment(-0.6, 0.5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
                child: Text("Previous Images"),
              ),
            ),


            Container(
              alignment: Alignment(0.6, 0.8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),

                onPressed: () {},
                child: Text("Pests & Diseases"),
              ),
            ),

          ]
        ),
      )
    );
  }
  
}