import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Produtos'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Descricao()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                child: Image.network(
                  "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Descricao()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                child: Image.network(
                  "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Descricao()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                child: Image.network(
                  "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Descricao()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Descricao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descrição'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Imagem',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'Uma foto tirada em algum lugar',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
