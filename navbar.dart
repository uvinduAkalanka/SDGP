import 'package:demo/aboutUs.dart';
import 'package:demo/home.dart';
import 'package:demo/search.dart';
import 'package:demo/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ), 
    );
  }

  Widget buildHeader(BuildContext context){
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
    );
  }


  Widget buildMenuItems(BuildContext context){
    return Column(
      children: [
        GestureDetector(
          onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomePage()),);},
            child: const ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Search'),
            ),
          ),
        //Attempts to recognize gestures that correspond to its non-null callbacks.
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const signIn()),);},
          child: const ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
          ),
        ),


        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const aboutUs()),);},
          child: const ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
          ),
        ),

        GestureDetector(
          onTap: () {
            FirebaseAuth.instance.signOut().then((value) {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Home()),
              );
            });
            },
          child: const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ),
      ],
    );
  }
}