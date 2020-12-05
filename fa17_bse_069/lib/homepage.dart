import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                  print('Dice1');
                },
                child: Image(
                  image: new AssetImage('images/dice1.jpg'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Dice2');
                },
                child: Image(
                  image: new AssetImage('images/dice2.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
