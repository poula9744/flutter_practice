import 'package:flutter/material.dart';

class Ex02 extends StatelessWidget {
  const Ex02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex02:Text"),),
      body: Text(
        "텍스트 위젯",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xfff0f000),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/01');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/03');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
