import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/image_properties.dart';
import 'package:html/dom.dart' as dom;

String htmlOpening = "<!DOCTYPE html><html><body>";
String content = "<p><strong>Ingredienti per 4 persone:</strong><br />- 600 gr spezzatino di maiale<br />- 1 di carota - 1/2 cipolla<br />- 400 ml di birra rossa<br />- olio di oliva - salvia<br />- 1 cucchiaio di paprika dolce<br />- farina - sale</p>";
String htmlClose = "</body></html>";

class ArticleT extends StatefulWidget {


  @override
  _ArticleStateT createState() => _ArticleStateT();
}

class _ArticleStateT extends State<ArticleT> {
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
              child: Text("LTC, i fondi ci sono ma il governo non li usa",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left
              ),
            ),
            Text("di Mariella Policheni del January 27, 2021",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            Image.network('https://www.corriere.ca/wp-content/uploads/2021/01/home-27-01-21.jpg'),
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
                    "TORONTO - A quasi un anno dall’inizio della pandemia, sei province su 10 - Newfoundland e Labrador, Prince Edward Island, New Brunswick, Manitoba, Saskatchewan e Alberta - non hanno potuto accedere all’intera somma di denaro stanziato dal governo federale "
                         "per le case di cura a lunga degenza. È quanto emerge dallo studio pubblicato dal Canadian Centre for Policy Alternatives (CCPA). \n  \n “Essendo l'assistenza a lungo termine l'epicentro delle morti nella pandemia, è sorprendente che diverse province semplicemente "
                        "non stiano impegnando le risorse, non stiano mettendo in atto i piani che consentirebbero loro di utilizzare questo denaro federale”, ha detto David Macdonald, autore dello studio ed economista senior del CCPA. \n \n"
                        "Nel rapporto viene messo in evidenza come decine di milioni di dollari stanziati da Ottawa per far ripartire tutti i settori dell’economia in sicurezza rimangano inutilizzati. L’Alberta, in particolare, è la provincia che non ha usufruito di quasi 336 milioni di dollari. \n \n"
                        "In base al Safe Restart Agreement negoziato a luglio, il governo federale ha stanziato 740 milioni di dollari per le persone più vulnerabili che ricevono cure a lunga degenza, cure domiciliari e cure palliative. Macdonald ha precisato che si è trattato di un trasferimento diretto con assegni inviati alle province che potevano spenderli come volevano. \n \n"
                        "Inoltre un fondo fino a un miliardo di dollari è stato anche stanziato per il Safe Long-term Care Fund, come parte dell'update fiscale autunnale, per aiutare le province e i territori a proteggere le persone nell’assistenza a lunga degenza. \n \n"
                        "Tuttavia, questo finanziamento era subordinato a un piano di spesa dettagliato: il risultato, ha detto l’autore dello studio, è che le province non sono state in grado di accedere ad almeno 149 milioni di dollari di quei fondi poiché non hanno alcun piano da presentare per poterne avere diritto. \n \n"
                        "“Le province dovevano dimostrare che stavano facendo qualcosa e poi il governo federale li avrebbe sostenuti”, ha detto Macdonald. \n \n"
                        "Del resto la realtà è sotto gli occhi di tutti: dall'inizio della pandemia di coronavirus lo scorso marzo, le case di cura a lungo termine in tutto il Canada sono state particolarmente colpite. Secondo gli ultimi dati provinciali, più del 40% delle case di cura a lunga degenza dell'Ontario sta attualmente segnalando focolai di Covid-19 e gli anziani residenti delle LTC rappresentano finora quasi il 60% dei decessi totali. \n \n"
                        "Pressioni sul governo Ford per migliorare le condizioni delle case di cura vengono fatte al governo da più parti: il 22 gennaio, durante una conferenza stampa, una coalizione di 100 organizzazioni sanitarie e famiglie ha chiesto al premier della provincia di agire immediatamente per affrontare la crisi del personale e la situazione delle LTC dell'Ontario. Case nelle quali, intanto, gli anziani continuano a cadere sotto i “colpi” del coronavirus che imperversa in queste strutture: con gli ultimi 24 decessi avvenuti nel corso di ventiquattrore sono 3.389 i residenti che hanno perso la loro battaglia contro il terribile virus mentre focolai sono attivi in 246 LTC della provincia. \n \n"
                        "Tra le tante problematiche presenti nelle LTC ci sono la carenza di personale, le strutture da riammodernare, la mancanza di spazio e così via. \n \n"
                        "L'Ontario, secondo Macdonald ha in atto piani sufficienti per spendere completamente i fondi federali destinati alle case di cura. \n \n"
                        "Quel che rattrista di più è vedere che mentre la pandemia infuria i fondi rimangono inutilizzati. E gli anziani continuano a morire.",
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




