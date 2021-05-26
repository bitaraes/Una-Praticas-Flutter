import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        width: 500,
        height: 500,
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Image(
          image: NetworkImage(
            'https://picsum.photos/250?image=37',
          ),
        ),
      ),
    ),
  );
}
