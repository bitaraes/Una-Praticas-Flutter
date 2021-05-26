import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.white,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black54,
                    Colors.black12,
                    Colors.black54,
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Image(
                image: NetworkImage(
                    "https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
