import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Main(),
  ));
}
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}
class _MainState extends State<Main> {
  var num=0;
  void result(){
    setState(() {
      num=Random().nextInt(5)+1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text("Magic 8 ball"),
        ),
        body: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  result();
                },
                child: Expanded(child: Image(image: AssetImage('ball$num.png'))),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){
              setState(() {
                num=0;
              });
            } ,child: Text("play again"),) ,
          ],
        )
    );
  }
}
