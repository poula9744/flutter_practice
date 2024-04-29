import 'package:flutter/material.dart';

class Ex14 extends StatelessWidget {
  const Ex14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expended(), AlertDialog()"),),
      body: Container(
        child: _Ex14(),
      ),
    );
  }
}

class _Ex14 extends StatefulWidget {
  const _Ex14({super.key});

  @override
  State<_Ex14> createState() => _Ex14State();
}

class _Ex14State extends State<_Ex14> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Color(0xffd6d6d6),
            child: Text("22", style: TextStyle(fontSize: 20),),
            ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Color(0xff6fd55f),
            child: Text("김수빈", style: TextStyle(fontSize: 20),),
            ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Color(0xff3b7730),
            child: Text("010-2222-2222", style: TextStyle(fontSize: 20),),
            ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Color(0xff8fce83),
            child: Text("02-2222-2222", style: TextStyle(fontSize: 20),),
          )
        ),
        Container(
          width: 50,
          height: 30,
          color: Color(0xffdbe8db),
          child: IconButton(
            onPressed: (){
              print("버튼 클릭");
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("즐겨찾기"),
                      content: Text("등록되었습니다"),
                      actions: [
                        TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, 
                          child: Text("예")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            child: Text("아니요")),
                      ],
                    );
                  }
              );
            },
            icon: Icon(Icons.density_medium, size: 15,),
            )
        ),
      ],
    );
  }
}
