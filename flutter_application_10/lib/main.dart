import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  String result = "";

  calcula(opearcao) {
    double n1 = double.parse(this.n1Controller.text);
    double n2 = double.parse(this.n2Controller.text);
    switch (opearcao) {
      case "+":
        return this.result = "$n1 + $n2 = ${(n1 + n2).toStringAsFixed(2)}";
        break;
      case "-":
        return this.result = "$n1 - $n2 = ${(n1 - n2).toStringAsFixed(2)}";
        break;
      case "/":
        return this.result = "$n1 / $n2 = ${(n1 / n2).toStringAsFixed(2)}";
        break;
      case "*":
        return this.result = "$n1 * $n2 = ${(n1 * n2).toStringAsFixed(2)}";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha página'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              controller: n1Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => n1Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              controller: n2Controller,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => n2Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Segundo Número'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() => calcula("+"));
                  },
                  child: Text('+'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() => calcula("-"));
                  },
                  child: Text("-"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() => calcula("*"));
                  },
                  child: Text("x"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() => calcula("/"));
                  },
                  child: Text('/'),
                ),
              ),
            ],
          ),
          Text(
            this.result,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
