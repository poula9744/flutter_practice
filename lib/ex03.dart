import 'package:flutter/material.dart';

class Ex03 extends StatelessWidget {
  const Ex03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex03:Image()")),
      body: Image.asset(
        'assets/images/profile.jpg',
        width: 500.0,
        height: 700.0,
        fit: BoxFit.contain,
        alignment: Alignment.bottomRight,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/02');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/04');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
