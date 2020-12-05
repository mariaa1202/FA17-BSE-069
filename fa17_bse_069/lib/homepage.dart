import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int left_image = 1;
  int right_image = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 70.0,
          ),
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        left_image = Random().nextInt(5) + 1;
                      });
                      print('value $left_image');
                    },
                    child: Image(
                      image: new AssetImage('images/dice$left_image.jpg'),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        right_image = Random().nextInt(5) + 1;
                      });
                      print('value $right_image');
                    },
                    child: Image(
                      image: new AssetImage('images/dice$right_image.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 170.0,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ContactUs()));
            },
            child: Text('Contact Us'),
          ),
        ],
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/a.jpg'),
                radius: 70.0,
              ),
              Text(
                'Maria Aslam',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
