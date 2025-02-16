import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('DICEE')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void chnageDiceFace()
  {
    leftDiceNumber= Random().nextInt(6)+1; //origanly 0-5 now 1-6;
    rightDiceNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(onPressed:() {
             setState(() {
              chnageDiceFace();
             });
            },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(
            flex: 1,
            child: TextButton(onPressed: () {
              setState(() {
               chnageDiceFace();
              });
            },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

