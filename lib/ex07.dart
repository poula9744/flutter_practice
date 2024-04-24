import 'package:flutter/material.dart';

class Ex07 extends StatelessWidget {
  const Ex07({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex07:Row()+Calums()")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 100,
            color: Color(0xffff0000),
            alignment: Alignment.center,
            child: Text("빨간색", style: TextStyle(fontSize: 24),)
          ),
         Column(
           children: [
             Container(
               width: 300,
               height: 50,
               color: Color(0xffffff00),
               alignment: Alignment.center,
               child: Text("노란색", style: TextStyle(fontSize: 24))
             ),
             Container(
               width: 300,
               height: 50,
               color: Color(0xff0000ff),
               alignment: Alignment.center,
               child: Text("파란색", style: TextStyle(fontSize: 24))
             ),
           ],
         )
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
                Navigator.pushNamed(context, '/06');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/08');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
