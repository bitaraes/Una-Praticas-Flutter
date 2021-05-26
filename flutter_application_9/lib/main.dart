import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int cliques = 0;

  void cliqueMais() {
    cliques += 1;
  }

  void cliqueMenos() {
    cliques -= 1;
  }

  void cliqueZero() {
    cliques = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira página'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                  'O Número $cliques é ${cliques % 2 == 0 ? "par" : "impar"}'),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 100,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(cliqueMais);
                    },
                    child: Icon(Icons.exposure_plus_1),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 70),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(cliqueZero);
                        },
                        child: Icon(Icons.exposure_zero),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(cliqueMenos);
                    },
                    child: Icon(Icons.exposure_minus_1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueMais);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
