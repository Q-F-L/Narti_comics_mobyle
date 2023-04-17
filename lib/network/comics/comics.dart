import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:narti_project/network/comics/comics.dart';

final favorites = [
  Comics(
      id: 13,
      name: "Starboy",
      image: "assets/comic_book_cover.png",
      favorites: true),
  Comics(
      id: 13,
      name: "Starboy2",
      image: "assets/comic_book_cover.png",
      favorites: true),
  Comics(
      id: 13,
      name: "Starboy4",
      image: "assets/comic_book_cover.png",
      favorites: false),
];

class Comics {
  int id;
  String name, image;
  bool favorites;

  Comics(
      {required this.id,
      required this.name,
      required this.image,
      required this.favorites});
}

final comics = [
  Comics(
      id: 13,
      name: "Starboy",
      image: "assets/comic_book_cover.png",
      favorites: true),
  Comics(
      id: 13,
      name: "Starboy1",
      image: "assets/comic_book_cover.png",
      favorites: false),
  Comics(
      id: 13,
      name: "Starboy2",
      image: "assets/comic_book_cover.png",
      favorites: true),
  Comics(
      id: 13,
      name: "Starboy3",
      image: "assets/comic_book_cover.png",
      favorites: false),
  Comics(
      id: 13,
      name: "Starboy4",
      image: "assets/comic_book_cover.png",
      favorites: true),
  Comics(
      id: 13,
      name: "Starboy5",
      image: "assets/comic_book_cover.png",
      favorites: false),
  Comics(
      id: 13,
      name: "Starboy6",
      image: "assets/comic_book_cover.png",
      favorites: false),
];
// class ComicsList {
//   List<Comics>? comics;
//   ComicsList({this.comics});
//
//   factory ComicsList.fromJson(Map<String, dynamic> json) {
//     var comicsJson = json['comics'] as List;
//
//     List<Comics>? comicsList =
//         comicsJson.map((e) => Comics.fromJson(e)).toList();
//
//     return ComicsList(
//       comics: comicsList,
//     );
//   }
// }
//
// class Comics {
//   final String? name;
//   final String? coverBook;
//   String? favourite;
//
//   Comics({this.name, this.coverBook, this.favourite});
//
//   factory Comics.fromJson(Map<String, dynamic> json) {
//     return Comics(
//         name: json['name'] as String,
//         coverBook: json['coverBook'] as String,
//         favourite: json['favourite'] as String);
//   }
// }

// Future<ComicsList> getComicsList() async {
//   const url = 'D:/Narti_Project/lib/json.dart';
//   final response = await http.get(url);
//
//   if (response.statusCode == 200) {
//     return ComicsList.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Error: ${response.reasonPhrase}')
//   }
// }
