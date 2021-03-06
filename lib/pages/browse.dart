import 'package:corriere_app/pages/article.dart';
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
  List<Articley> art = new List<Articley>();

  void jiggle(index) async {
    Articley instance = art[index];
    dynamic result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => Article(user: art[index])));
  }

  void update() async {
    Pull instance = Pull();
    await instance.getData();
    art = instance.bowser();
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
        itemCount: art.length,
        itemBuilder: (context, index) {
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
                      onTap: () {
                        jiggle(index);
                      },
                      title: Text(
                        art[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    art[index].im1 != '  '
                        ? Image.network(art[index].im1)
                        : Image.network(
                            'https://cnmng.ca/wp-content/uploads/2021/02/Shieldlogo_cnmng-sm.jpg'
                          ),
                    Text(art[index].author + ' ' + art[index].date),
                    Text(art[index].cat + ' ' + art[index].lang),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
