import 'package:flutter/material.dart';

class ButtonWidgetIgual extends StatefulWidget {
  String operacao;
  VoidCallback? action;
  ButtonWidgetIgual({super.key, required this.operacao, this.action});

  @override
  State<ButtonWidgetIgual> createState() => _ButtonWidgetIgualState();
}

class _ButtonWidgetIgualState extends State<ButtonWidgetIgual> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(0.0),
        margin: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
          color: Colors.orange[800],
          boxShadow: [
            BoxShadow(
                color: Colors.orange.shade500,
                offset: const Offset(2.0, 2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0),
            const BoxShadow(
                color: Colors.grey,
                offset: Offset(-2.0, -2.0),
                blurRadius: 8.0,
                spreadRadius: 1.0),
          ],
        ),
        child: MaterialButton(
          padding: const EdgeInsets.all(30.0),
          onPressed: widget.action,
          child: Text(
            widget.operacao,
            style: const TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
