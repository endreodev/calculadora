import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  String operacao;
  VoidCallback? action;
  ButtonWidget({super.key, required this.operacao, this.action});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(0.0),
        margin: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: MaterialButton(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            widget.operacao.toString(),
            style: const TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          onPressed: widget.action,
        ),
      ),
    );
  }
}
