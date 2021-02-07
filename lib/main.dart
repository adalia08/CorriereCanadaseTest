import 'package:corriere_app/article3.dart';
import 'package:corriere_app/pages/browse.dart';
import 'package:flutter/material.dart';
import 'package:corriere_app/pages/explore.dart';
import 'package:corriere_app/pages/article.dart';
import 'package:corriere_app/article2.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Browse(),
      '/browse': (context) => Explore(),
      '/article': (context) => Article(),
      '/article2': (context) => ArticleT(),
      '/article3': (context) => ArticleR()
    },
  ));
}