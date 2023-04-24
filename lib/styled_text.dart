import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({Key}) : super(key: Key);
  @override
  Widget build(context) {
    return const Text(
      'hiiieee Banshii! how YOU',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
