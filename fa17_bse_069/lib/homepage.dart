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
      body: Center(
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
    );
  }
}
