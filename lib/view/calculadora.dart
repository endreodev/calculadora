import 'package:flutter/material.dart';
import 'package:calculadora/components/buttonwidget.dart';

import '../components/buttonwidgetigual.dart';

class Calculatora extends StatefulWidget {
  @override
  _CalculatoraState createState() => _CalculatoraState();
}

class _CalculatoraState extends State<Calculatora> {
  String output = "0";
  String _out = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String btnVal) {
    debugPrint(btnVal);
    if (btnVal == "AC") {
      _out = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "*" ||
        btnVal == "/") {
      num1 = double.parse(output);
      operand = btnVal;
      _out = "0";
      output = output + btnVal;
    } else if (btnVal == ".") {
      if (_out.contains(".")) {
        debugPrint("Already exist");
        return;
      } else {
        _out = _out + btnVal;
      }
    } else if (btnVal == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _out = (num2 + num1).toString();
      }
      if (operand == "-") {
        _out = (num1 - num2).toString();
      }
      if (operand == "*") {
        _out = (num2 * num1).toString();
      }
      if (operand == "/") {
        _out = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      //_out = "0";
    } else {
      _out = _out + btnVal;
    }
    setState(() {
      output = double.parse(_out).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 10,
            centerTitle: true,
            title: const Text('Calculadora'),
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 50.0),
                  child: Text(
                    output,
                    style: const TextStyle(
                        fontSize: 60.0,
                        // backgroundColor: Colors.white,
                        color: Colors.white),
                  )),
              const Expanded(
                child: Divider(),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ButtonWidget(
                        operacao: "7",
                        action: () => {buttonPressed("7")},
                      ),
                      ButtonWidget(
                        operacao: "8",
                        action: () => {buttonPressed("8")},
                      ),
                      ButtonWidget(
                        operacao: "9",
                        action: () => {buttonPressed("9")},
                      ),
                      ButtonWidget(
                        operacao: "*",
                        action: () => {buttonPressed("*")},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      ButtonWidget(
                        operacao: "4",
                        action: () => {buttonPressed("4")},
                      ),
                      ButtonWidget(
                        operacao: "5",
                        action: () => {buttonPressed("5")},
                      ),
                      ButtonWidget(
                        operacao: "6",
                        action: () => {buttonPressed("6")},
                      ),
                      ButtonWidget(
                        operacao: "/",
                        action: () => {buttonPressed("/")},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      ButtonWidget(
                        operacao: "1",
                        action: () => {buttonPressed("1")},
                      ),
                      ButtonWidget(
                        operacao: "2",
                        action: () => {buttonPressed("2")},
                      ),
                      ButtonWidget(
                        operacao: "3",
                        action: () => {buttonPressed("3")},
                      ),
                      ButtonWidget(
                        operacao: "-",
                        action: () => {buttonPressed("-")},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      ButtonWidget(
                        operacao: "0",
                        action: () => {buttonPressed("0")},
                      ),
                      ButtonWidget(
                        operacao: ".",
                        action: () => {buttonPressed(".")},
                      ),
                      ButtonWidget(
                        operacao: "+",
                        action: () => {buttonPressed("+")},
                      ),
                      ButtonWidgetIgual(
                        operacao: "=",
                        action: () => {buttonPressed("=")},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      ButtonWidget(
                        operacao: "AC",
                        action: () => {buttonPressed("AC")},
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
