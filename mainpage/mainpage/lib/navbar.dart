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
      children: const [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text('Search'),
        ),
        ListTile(
          leading: Icon(Icons.local_activity),
          title: Text('Activity'),
        ),
        ListTile(
          leading: Icon(Icons.login),
          title: Text('Login'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About Us'),
        ),
      ],
    );
  }
}