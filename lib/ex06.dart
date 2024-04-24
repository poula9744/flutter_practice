import 'package:flutter/material.dart';

class Ex06 extends StatelessWidget {
  const Ex06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex06:Calums()")),
      body: Column(
        children: [
          Container(
            width: 300,
            height: 50,
            color: Color(0xffff0000),
            alignment: Alignment.center,
            child: Text("첫 번째", style: TextStyle(fontSize: 24),)
          ),
          Container(
            width: 300,
            height: 50,
            color: Color(0xffffff00),
            alignment: Alignment.bottomLeft,
            child: Text("두 번째", style: TextStyle(fontSize: 24))
          ),
          Container(
            width: 300,
            height: 50,
            color: Color(0xffff00ff),
            alignment: Alignment.topRight,
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
                Navigator.pushNamed(context, '/05');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/07');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
