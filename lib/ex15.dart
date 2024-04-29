import 'package:flutter/material.dart';

class Ex15 extends StatelessWidget {
  const Ex15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("if문 사용하기")),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color(0xffd6d6d6),
        child: _Ex15(),
      ),
    );
  }
}

class _Ex15 extends StatefulWidget {
  const _Ex15({super.key});

  //등록
  @override
  State<_Ex15> createState() => _Ex15State();
}

class _Ex15State extends State<_Ex15> {

  bool isFavorite = false;

  //초기화
  @override
  void initState() {
    super.initState();
  }

  //그림그리기
  @override
  Widget build(BuildContext context) {



    return Container(
      width: 450,
      color: Color(0xffffffff),
      child: Column(
        children: [
          Image.asset("assets/images/profile.jpg"),
          IconButton(
              onPressed: (){
                print("클릭");
                setState(() {
                  isFavorite =! isFavorite;
                });
                print(isFavorite);
              },
              icon: Icon(Icons.star, size: 50,
                //color: (isFavorite==true)?Color(0xffffff16):Color(0xff000000),
                color: _favorite(isFavorite)
              )
          )
        ],
      ),
    );
  }
}

Color _favorite(bool isFavorite){

  if(isFavorite==true){
    return Color(0xffffff16);
  } else {
    return Color(0xff000000);
  }
}