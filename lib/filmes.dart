import 'dart:io';

class Filme {
  final String title;
  final String imageUrl;
  final String desc;

  Filme({required this.title, required this.imageUrl, required this.desc});

   List<Filme> getFilmes(){
    return [
    Filme(title: "AAAA", imageUrl: "aaaaaa", desc: "aaaaaaaa"),
    Filme(title: "BBBB", imageUrl: "aaaaaa", desc: "aaaaaaaa"),
    Filme(title: "CCCC", imageUrl: "aaaaaa", desc: "aaaaaaaa"),
    ];
    }
}
