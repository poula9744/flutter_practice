import 'package:flutter/material.dart';

class Ex09 extends StatelessWidget {
  const Ex09({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("방명록1"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              Navigator.pushNamed(context, '/08');
            },
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 50,
            height: 28,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border.all()),
            child: Text("11", style: TextStyle(fontSize: 18)),
          ),
          Container(
            width: 280,
            height: 28,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border.all()),
            child: Text("안녕하세요 인사드립니다.", style: TextStyle(fontSize: 18)),
          ),
          Container(
            width: 70,
            height: 28,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border.all()),
            child: Text("홍길동", style: TextStyle(fontSize: 18)),
          ),
          Container(
            width: 120,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all()),
            child: Text("2024-03-11", style: TextStyle(fontSize: 18)),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("다음페이지로 이동");
          Navigator.pushNamed(context, "/10");
        },
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}
