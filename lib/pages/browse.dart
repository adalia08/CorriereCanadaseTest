import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:corriere_app/services/pull.dart';

class Header {
  String title;
  String imUrl;
  String author;
  String nav;

  Header({this.title, this.imUrl, this.author, this.nav});
}


class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {


  List<Header> articles  = [
    Header(title: "La ricetta del giorno: Cantucci toscani", imUrl: "https://www.corriere.ca/wp-content/uploads/cucinalogo.jpg", author: "di Ynot del February 3, 2021", nav: "/article3"),
    Header(title: "Ipotesi voto anticipato: stallo Trudeau, O’Toole e Singh non convincono", imUrl: "https://www.corriere.ca/wp-content/uploads/2021/01/ottawa-28-01-21.jpg", author: "di Francesco Veronesi del January 28, 2021", nav: "/article"),
    Header(title: "LTC, i fondi ci sono ma il governo non li usa", imUrl: "https://www.corriere.ca/wp-content/uploads/2021/01/home-27-01-21-300x146.jpg", author: "di Mariella Policheni il January 27, 2021", nav: "/article2")
  ];


  void jiggle(index) async {

    Header instance = articles[index];
    dynamic result = await Navigator.pushNamed(context, instance.nav);
  }

   void update() async {
     Pull instance = Pull();
     await instance.getData();

        // Navigator.push(article, {
        //   'photo': instance.photo
        // });
   }

   @override
   void initState() {
     super.initState();
     update();
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.green[300],
                  width: 3,
                ),
              ),
              child: Card(

                child: Column(
                  children: [
                    ListTile(
                      onTap: (){
                        jiggle(index);
                      },
                      title: Text(
                        articles[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),
                      ),

                    ),
                    Image.network(articles[index].imUrl),
                    Text(articles[index].author)
                  ],
                ),

              ),
            ),
          );
        },
      ),
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: GestureDetector(
      //       onTap: (){
      //
      //       },
      //       child: Card(
      //
      //         child: Column(
      //           children: [
      //             Container(
      //               decoration: BoxDecoration(
      //                 image: DecorationImage(
      //                   image: NetworkImage( 'https://placeimg.com/640/480/any'),
      //                 ),
      //               ),
      //               child: ListTile(
      //                 onTap: (){
      //                 },
      //
      //               ),
      //             ),
      //             Text("dsaf"),
      //           ],
      //         ),
      //         elevation: 5,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10.0),
      //         ),
      //       ),
      //     ),
      //   ),

    );
  }
}
