import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const grey = Color.fromRGBO(112, 112, 112, 1);
  static const oper = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = grey,
    required this.cb,
  });

  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = grey,
    required this.cb,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.big = false,
    this.color = oper,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Container(
        color: color,
        child: TextButton(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            ),
          ),
          onPressed: () => cb(text),
        ),
      ),
    );
  }
}
