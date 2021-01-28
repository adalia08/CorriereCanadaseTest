import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/image_properties.dart';
import 'package:html/dom.dart' as dom;

String htmlOpening = "<!DOCTYPE html><html><body>";
String content = "<p><strong>Ingredienti per 4 persone:</strong><br />- 600 gr spezzatino di maiale<br />- 1 di carota - 1/2 cipolla<br />- 400 ml di birra rossa<br />- olio di oliva - salvia<br />- 1 cucchiaio di paprika dolce<br />- farina - sale</p>";
String htmlClose = "</body></html>";

class Article extends StatefulWidget {


  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
                child: Text("Ipotesi voto anticipato: stallo Trudeau, O’Toole e Singh non convincono",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left
                ),
              ),
              Text("di Francesco Veronesi il January 28, 2021",
                  textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              Image.network('https://www.corriere.ca/wp-content/uploads/2021/01/ottawa-28-01-21.jpg'),
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
                      "TORONTO - Indecisione e incertezza. L’elettorato canadese continua ad essere diviso di fronte all’ipotesi, sempre più probabile, che il nostro Paese torni alle urne in primavera. L’ulteriore conferma arriva da un sondaggio pubblicato ieri dalla Angus Reid che ci fornisce un’istantanea dei rapporti di forza tra i principali partiti e il livello di gradimento e approvazione per i rispettivi leader federali. ""L’istantanea che ne esce è quella di un panorama politico frammentato, con l’elettorato canadese ancora estremamente indeciso, probabilmente perché nel bel mezzo della seconda ondata della pandemia di Covid-19 i pensieri per la gente comune sono ben altri rispetto a quello di tornare a votare. "
                         "\n \n \t Sta di fatto, in ogni caso, che se si dovesse votare in questo momento il Partito Liberale si assesterebbe attorno al 35 per cento, seguito dal Partito Conservatore al 30 per cento. In leggero recupero rispetto agli ultimi sondaggi l’Ndp, che raggiunge quota 20 per cento, mentre Bloc Quebecois e Verdi sono abbondantemente sotto il 10 per cento. "
                        "\n \n \t Come leggere questi dati? Innanzitutto la prima considerazione da fare è quella che se il responso delle urne dovesse confermare i rapporti di forza emersi da questo sondaggio, ci ritroveremmo con una situazione del tutto simile a quella attuale. \n \n \t I liberali di Justin Trudeau si troverebbero ad avere una maggioranza relativa ma non assoluta. Di conseguenza dovremmo fare i conti di nuovo con un governo di minoranza, accompagnato dalla conseguente instabilità politica che è attualmente alla base delle rivendicazioni di chi, in questo momento, spinge per il voto anticipato."
                        "\n \n \t Ma se Trudeau non se la passa bene, gli altri leader non si trovano di certo in una situazione migliore. I conservatori, con il 30 per cento, si confermano come un partito d’opposizione debole e fragile, con una leadership che in questi mesi non è stata in grado di voltare pagina e rafforzare il partito. \n \n \t Alle elezioni del 2019, sotto la guida dell’allora leader Andrew Scheer, i tory presero poco meno del 35 per cento. Il nuovo segretario Erin O’Toole non solo non è stato un valore aggiunto per il partito, ma addirittura ha sperperato un buon 5 per cento in termini di consenso. E da questo punto di vista è interessante un secondo elemento messo in luce nel sondaggio della Angus Reid. Stando ai dati dell’indagine demoscopica presentata ieri, il 46 per cento dell’elettorato ha un’opinione negativa di O’Toole: nel dicembre del 2017, dopo essere stato alla guida del partito per sei mesi, Scheer veniva giudicato negativamente dal 36 per cento dell’elettorato."
                        "\n \n \t Nello spostamento degli equilibri e dei rapporti di forza tra i partiti, a guadagnarci è stato l’Ndp. Alle ultime elezioni del 2019, i neodemocratici presero il 15 per cento mentre se si votasse in questo momento ci sarebbe un guadagno netto di cinque punti percentuali. Si tratterebbe comunque di spostamenti minimi rispetto alla geografica politica attuale, che non avrebbero conseguenze rilevanti nel numero di seggi assegnati ai rispettivi partiti. \n \n \t Di fronte a questo ci si continua a domandare se abbia senso un eventuale ritorno alle urne, tenendo anche conto che in questa fase l’obiettivo primario di tutta la classe politica, maggioranza e opposizioni, è quello di garantire una risposta efficace e "
                        "veloce alla minaccia rappresentata dalla pandemia.",
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




