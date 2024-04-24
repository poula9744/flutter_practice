import 'package:flutter/material.dart';

class Ex04 extends StatelessWidget {
  const Ex04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex04:Container()")),
      body: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 0, 0, 30),
        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Color(0xFFD6D6D6),
          border: Border.all(color: Color(0xff000000), width: 3.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(Icons.home, size: 50.0, color: Color(0xff000000),)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/03');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/05');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
