import 'package:flutter/material.dart';

class Ex05 extends StatelessWidget {
  const Ex05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex05:Row()"),),
      body: Row(
        children: [
          Container(
            color: Color(0xff00ff00),
            width: 150,
            child: Text("첫 번째", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200))
          ),
          Container(
            color: Color(0xff0000ff),
            width: 150,
            child: Text("두 번째", style: TextStyle(fontSize: 24))
          ),

          Container(
            color: Color(0xff00ffff),
              width: 150,
              child: Text("세 번째", style: TextStyle(fontSize: 24))
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/04');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/06');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
