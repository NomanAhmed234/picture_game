import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Picturegame(
  ));
}
int box1=1;
int box2=2;
int box3=3;
int box4=4;
int count = 0;
int last = 0;
int highest = 0;
int lowest =0;
String result="Start";
class Picturegame extends StatefulWidget {
  const Picturegame({super.key});

  @override
  State<Picturegame> createState() => _PicturegameState();
}

class _PicturegameState extends State<Picturegame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Picture Matching Game"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('Last Attempt :$last',style: TextStyle(fontSize: 15,color: Colors.blueGrey.shade900,fontWeight: FontWeight.w600),),
                // Text('$last'),
                // Text('$last'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("$result",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blue,fontSize: 19),),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(child: Image.asset("images/pic$box1.png")),
                  Expanded(child: Image.asset("images/pic$box2.png")),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(child: Image.asset("images/pic$box3.png")),
                  Expanded(child: Image.asset("images/pic$box4.png")),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("$count",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.blue),),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                box1=Random().nextInt(2)+1;
                box2=Random().nextInt(2)+1;
                box3=Random().nextInt(3)+1;
                box4=Random().nextInt(2)+1;
                count= count+1;
                if(box1 == box2 && box1 == box3 && box1==box4){
                  result= "Completed in $count attempted";
                  last=count;
                  count=0;
                }
                else {
                  result= "Attempt $count";
                }
              });
            }, child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Click",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            )),

          ],
        ),
      ),
        );

  }
}


