import 'package:flutter/material.dart';

void main() {
  String nome = "Jão";
  String dia = "terça-feira";

  runApp(
    Center(
      child: RichText(
          textDirection: TextDirection.ltr,
          text: TextSpan(
            text: 'Oi, ',
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
            ),
            children: [
              TextSpan(
                text: '$nome',
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.double,
                  backgroundColor: Colors.green,
                ),
              ),
              TextSpan(text: '!'),
              TextSpan(
                text: '\nHoje é $dia!',
                style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.yellow,
                ),
              ),
              TextSpan(
                text: '\nBom dia!',
              ),
            ],
          )),
    ),
  );
}
