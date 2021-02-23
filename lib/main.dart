import 'dart:io';

import 'package:corriere_app/article3.dart';
import 'package:corriere_app/pages/browse.dart';
import 'package:flutter/material.dart';
import 'package:corriere_app/pages/explore.dart';
import 'package:corriere_app/pages/article.dart';
import 'package:corriere_app/article2.dart';
import 'package:corriere_app/pages/browseCat.dart';


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Explore(),
      '/browse': (context) => Browse(),
      '/article': (context) => Article(),
      '/article2': (context) => ArticleT(),
      '/article3': (context) => ArticleR(),
      '/browseCat': (context) => BrowseCat()
    },
  ));
}