import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
            ),
          ),
        ),
        Text(
          "Google Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
