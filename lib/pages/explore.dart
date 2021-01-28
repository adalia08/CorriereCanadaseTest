import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:corriere_app/services/pull.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  List<String> catagories = [
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

    // Navigator.pop(context, {
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
    print('build state');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text('Explore'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: catagories.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
            child: Card(
              child: ListTile(
                onTap: (){
                },
                title: Center(
                  child: Text(
                    catagories[index],
                  ),
                ),

              ),
            ),
          );
        },
      ),
    );
  }
}