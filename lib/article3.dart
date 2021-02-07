import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/image_properties.dart';
import 'package:html/dom.dart' as dom;

String htmlOpening = "<!DOCTYPE html><html><body>";
String content = "<p><strong>Ingredienti per 4 persone:</strong><br />- 600 gr spezzatino di maiale<br />- 1 di carota - 1/2 cipolla<br />- 400 ml di birra rossa<br />- olio di oliva - salvia<br />- 1 cucchiaio di paprika dolce<br />- farina - sale</p>";
String htmlClose = "</body></html>";

class ArticleR extends StatefulWidget {


  @override
  _ArticleStateR createState() => _ArticleStateR();
}

class _ArticleStateR extends State<ArticleR> {
  String htmlOpening = "<!DOCTYPE html><html><body>";
  String content = "<h1>adfas dafsdf s</h1></h1><img src='images/Gusto/cucinalogo.jpg' /><p>sad iasdfh d</p>";
  String htmlClose = "</body></html>";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SingleChildScrollView(
        // Center is a layout widfdsget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 6.0),
              child: Text("La ricetta del giorno: Cantucci toscani",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left
              ),
            ),
            Text("di Ynot del February 3, 2021",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            Image.network('https://www.corriere.ca/wp-content/uploads/cucinalogo.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey[100],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "TORONTO – Dalle pagine del Corriere Canadese, la cucina di Teresina: ecco la ricetta per i Cantucci toscani."
                        "\n \n Porzioni 60 biscotti: "
                        "\n \n - 500 g Farina 00 "
                        "\n \n - 300 g Zucchero "
                        "\n \n - 300 g Mandorle (con la pelle) "
                        "\n \n - 50 g Burro "
                        "\n \n - 3 Uova "
                        "\n \n - 2 g Ammoniaca per dolci"
                        "\n \n Preparazione: Fate ammorbidire il burro a temperatura ambiente. Mettete in una ciotola grande la farina e fate un buco al centro. Unite lo zucchero e le uova intere e mescolate bene con una forchetta. Unite l’ammoniaca per dolci e il burro e impastate energicamente fi no ad ottenere un impasto molto sodo. Unite anche le mandorle non pelate e impastate in modo da amalgamarle e distribuirle al resto dell’impasto. Quando l’impasto sarà formato create due filoncini e metteteli su una teglia con carta forno. Cuocete i due filoncini in forno preriscaldato ventilato a 160° per 10 minuti circa. Sfornate i due filoncini e lasciateli raffreddare un pochino poi tagliateli a fette di un dito circa possibilmente leggermente in obliquo e mettete tutti i cantucci su una teglia con carta forno coricati. Rimettete i cantucci toscani ad asciugare in forno per 15 minuti circa. Sfornate i cantucci toscani e fateli raffreddare completamente prima di toglierli dalla teglia."
                        "\n \n Inviate le vostre ricette italiane a: corriere@corriere.com"
                        "\n \n Per vedere tutte le ricette pubblicate: https://www.corriere.ca/ricette/",
                style: TextStyle(
                      height: 1.75,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ),

    );
  }
}




