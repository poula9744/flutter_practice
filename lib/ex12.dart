import 'package:flutter/material.dart';

class Ex12 extends StatelessWidget {
  const Ex12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("전화번호 실습"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              Navigator.pushNamed(context, '/11');
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xffd6d6d6),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(10),

              width: 440,
              color: Color(0xffffffff),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text("강호동", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(120, 0, 0, 0),
                    child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Text("휴대전화", style: TextStyle(fontSize: 15, color: Color(0xffd3d3d3)))),
                          Container(
                              child: Text("010-2222-2222", style: TextStyle(fontSize: 18))),
                        ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(80, 30, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Icon(Icons.call),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Icon(Icons.chat_bubble),
                        ),
                        Container(
                          child: Icon(Icons.videocam),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(10),

              width: 440,
              color: Color(0xffffffff),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                        child: Text("선물하기", style: TextStyle(fontSize: 12, color: Color(0xffd3d3d3))),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text("Samsung Pay", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff000000))),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(270, 0, 0, 0),
                    child: Icon(Icons.attach_money),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),

              width: 440,
              color: Color(0xffffffff),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text("송금하기", style: TextStyle(fontSize: 12, color: Color(0xffd3d3d3))),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text("Toss", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff000000))),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(320, 0, 0, 0),
                    child: Icon(Icons.payments),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 240,
              height: 60,
              child: OutlinedButton
                (onPressed: (){},
                child: Text("기록", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff000000)))),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 240,
              height: 60,
              child: OutlinedButton
                (onPressed: (){},
                  child: Text("저장위치", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff000000)))),
            )
          ],
        ),
      )
    );
  }
}
