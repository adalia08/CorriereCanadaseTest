import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:corriere_app/services/pull.dart';

class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {


  List<String> articles  = [
    "Events",
    "Ad-campaigns",
    "Chiesa2000",
    "Interviste",
    "Le Poesie",
    "Editoriali",
    "English Articles",
    "Politica",
    "Controsport"
  ];


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
      body: Column(
        children: <Widget> [
           Center(
             child: Padding(
               padding: const EdgeInsets.all(20.0),

                 child: InkWell(
                   onTap: (){
                     print("touched");
                     update();
                   },
                   child: Container(
                     height: 100,
                     width: 100,
                     child: Card(
                       child: Text("Click Here for the Article!!"),
                       margin: EdgeInsets.all(20.0),
                     ),
                   ),
                 ),

             ),
           ),
        ],

      )
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
