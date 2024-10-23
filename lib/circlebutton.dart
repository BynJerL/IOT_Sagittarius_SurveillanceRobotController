import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String text;

  CircleButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        shape: CircleBorder(),
        padding: EdgeInsets.all(24.0),
      ),
      child: Text(text),
    );
  }
}