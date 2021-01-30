import 'package:corriere_app/pages/browse.dart';
import 'package:flutter/material.dart';
import 'package:corriere_app/pages/explore.dart';
import 'package:corriere_app/pages/article.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Browse(),
      '/browse': (context) => Explore(),
      '/article': (context) => Article()
    },
  ));
}