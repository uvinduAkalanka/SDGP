import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('my first app2'),
          centerTitle: true,
          backgroundColor: Colors.purple[600]
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('hello, world'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('click me'),
          ),
          Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('inside container')
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[600],
        onPressed: () {  },
        child: Text('click'),
      ),
    );
  }
}