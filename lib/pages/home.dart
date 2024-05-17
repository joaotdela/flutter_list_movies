import 'package:flutter/material.dart';
import 'package:list_details/filmes.dart';
import 'package:list_details/pages/details.dart';

class HomePage extends StatelessWidget {
  final List<Filme> filmes = [
    Filme(
        title: "O Segredo dos Lírios",
        imageUrl:
            "https://lh6.googleusercontent.com/proxy/lPe21R_JN3C12-UnYIXBDrTtXCob9e_I7NXVwYru3-Z8NTBSb9HQDwTVZKRpziKbXZjgExCZ1Rrq58TEKnptV27-g33VD_mzwoLoEpD-4YNyE090A6tXe7Y0",
        desc:
            "Um thriller psicológico que mergulha nas profundezas da mente humana."),
    Filme(
        title: "Star Wars",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1200px-Star_Wars_Logo.svg.png",
        desc:
            "Um épico de fantasia que segue a jornada de um herói em busca de redenção."),
    Filme(
        title: "Amor em Paris",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkv0gOvVdLl8GHYhp2U-Ty5UwTAstJfHd7Qc8BW2ObCQ&s",
        desc: "Uma história romântica ambientada na Cidade Luz."),
    Filme(
        title: "Pânico",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY2Hp_JqVjyvP9Hxbc1kdX9JJidHRnx4FOifWyDCKbfA&s",
        desc:
            "O filme conta a história da adolescente Sidney Prescott, que é perseguida por um assassino misterioso chamado Ghostface."),
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView.builder(
          itemCount: filmes.length,
          itemBuilder: (context, index) {
            final filme = filmes[index];
            return Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      filme.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(filme.title),
                  subtitle: Text(filme.desc),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Ação do botão
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Details(filme: filme),
                      ));
                    },
                    child: Icon(Icons.arrow_right),
                  ),
                ));
          },
        ));
  }
}

