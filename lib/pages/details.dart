import 'package:flutter/material.dart';
import 'package:list_details/filmes.dart';

import 'dart:io';

class Details extends StatelessWidget {
  final Filme filme;
  const Details({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detalhes")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(filme.title),
                    ),
                  );
                },
                child: Image.network(
                  filme.imageUrl,
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Descrição:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                filme.desc,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0), // Espaço em branco
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Voltar para a página anterior
                },
                child: Text('Voltar'),
              ),
            ],
          ),
        ));
  }
}
