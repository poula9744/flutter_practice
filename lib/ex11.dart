import 'package:flutter/material.dart';

class Ex11 extends StatelessWidget {
  const Ex11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("방명록3"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              Navigator.pushNamed(context, '/10');
            },
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                      width: 200,
                      height: 28,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all()),
                      child: Text("홍길동", style: TextStyle(fontSize: 18)),
                    ),
                    Container(
                      width: 170,
                      height: 28,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all()),
                      child: Text("2024-03-03", style: TextStyle(fontSize: 18)),
                    ),

                  ]
              ),
              Container(
                  width: 420,
                  height: 28,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all()),
                  child: Text("방명록 글 내용입니다.", style: TextStyle(fontSize: 18))
              )
            ],
          ),
          Container(
            width: 100,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all()),
            child: Icon(Icons.delete),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("다음페이지로 이동");
          Navigator.pushNamed(context, "/12");
        },
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}
