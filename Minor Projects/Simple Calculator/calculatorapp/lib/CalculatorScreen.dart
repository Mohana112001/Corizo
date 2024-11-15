import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}


class _CalculatorScreenState extends State<CalculatorScreen> {

  String display = '';
  double? num1;
  double? num2;
  String? operator;

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        display = '';
        num1 = null;
        num2 = null;
        operator = null;
      } else if (buttonText == '=') {
        num2 = double.tryParse(display);
        if (num1 != null && num2 != null && operator != null) {
          switch (operator) {
            case '+':
              display = (num1! + num2!).toString();
              break;
            case '-':
              display = (num1! - num2!).toString();
              break;
            case '*':
              display = (num1! * num2!).toString();
              break;
            case '/':
              display = (num1! / num2!).toString();
              break;
            case '%':
              display = (num1! % num2!).toString();
              break;
          }
          num1 = null;
          num2 = null;
          operator = null;
        }
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/' || buttonText == '%') {
        num1 = double.tryParse(display);
        operator = buttonText;
        display = '';
      } else {
        display += buttonText;
      }
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:WidgetStatePropertyAll<Color>(Colors.blue),
            padding:WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(25)),
          ),
          onPressed: () => buttonPressed(buttonText),
          child: Text(buttonText, style: TextStyle(fontSize: 24,color: Colors.black)),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
          centerTitle: true,
          title:const Text("Calculator"),
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Container(
              color: Colors.white,
              padding:EdgeInsets.all(20.0),
              alignment: Alignment.centerRight,
              child: Text(display,style: TextStyle(fontSize: 30,color: Colors.blue)),
            ),        
            Row(
            children: <Widget>[
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
              buildButton('/')
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
              buildButton('*')
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
              buildButton('-')
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('C'),
              buildButton('0'),
              buildButton('='),
              buildButton('+')
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('%'),           
              ],        
            ),
            RawMaterialButton(onPressed: (){
              setState(() {
                
              });

            }),
          ],
        ),
    );
  }
}