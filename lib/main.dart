import 'dart:ui';

import 'package:list_details/filmes.dart';
import 'package:flutter/material.dart';
import 'package:list_details/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lista de Filmes",
      routes: {
        '/home': (context) => HomePage(),
      },
     home: HomePage(),
    );
  }
}
