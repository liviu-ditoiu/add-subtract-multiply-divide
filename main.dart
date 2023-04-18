import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: firstNumberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter First Number'),
          ),
          TextField(
            controller: secondNumberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter Second Number'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                child: Text('+'),
                onPressed: () {
                  setState(() {
                    result = double.parse(firstNumberController.text) +
                        double.parse(secondNumberController.text);
                  });
                },
              ),
              ElevatedButton(
                child: Text('-'),
                onPressed: () {
                  setState(() {
                    result = double.parse(firstNumberController.text) -
                        double.parse(secondNumberController.text);
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                child: Text('*'),
                onPressed: () {
                  setState(() {
                    result = double.parse(firstNumberController.text) *
                        double.parse(secondNumberController.text);
                  });
                },
              ),
              ElevatedButton(
                child: Text('/'),
                onPressed: () {
                  setState(() {
                    result = double.parse(firstNumberController.text) /
                        double.parse(secondNumberController.text);
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Result: $result',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
