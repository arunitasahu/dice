import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('DICE'),
          backgroundColor: Colors.black54,
        ),
        body: DicePage(),
      ),
    ),
    );
}
class DicePage extends StatefulWidget {


@override
_DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
int leftDiceNumber=1;
int rightDiceNumber=1;
@override
Widget build(BuildContext context) {
return Center(
child: Row(
children: <Widget> [
Expanded(
child: FlatButton(
onPressed: (){
  setState((){
    rightDiceNumber=Random().nextInt(6)+1;
leftDiceNumber=Random().nextInt(6)+1;
print('left dice number = $leftDiceNumber' );
} );


},
child: Image.asset('images/dice$leftDiceNumber.png'),
),
),

Expanded(
child: FlatButton(
onPressed: (){
  setState(() {


  rightDiceNumber=Random().nextInt(6)+1;
  leftDiceNumber=Random().nextInt(6)+1;
  print('right dice number = $rightDiceNumber' );
} );
},
child: Image.asset('images/dice$rightDiceNumber.png'),),
),
],
),
);
}
}



