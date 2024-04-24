import 'package:flutter/material.dart';

class Ex08 extends StatelessWidget {
  const Ex08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ex08: Button()"),),
      body: Column(
        children: [
          TextButton
            (onPressed: () {},
            child: Text('TextButton')
          ),
          SizedBox(
            width: 450,
            height: 40,
            child: ElevatedButton
              (onPressed: () {
                print("Elevated button click");
            },
              child: Text('Elevated button'),
          ),

          ),
          Container(
            width: 200,
            height: 100,
            margin: EdgeInsets.all(30),
            child: OutlinedButton
              (onPressed: () {},
                child: Text('outlined button')
            ),
          ),
          IconButton
            (onPressed: () {},
              icon: Icon(Icons.star)
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
                Navigator.pushNamed(context, '/07');
              },
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/09');
              },
              child: Icon(Icons.navigate_next),
            )
          ],
        ),
      )
    );
  }
}
