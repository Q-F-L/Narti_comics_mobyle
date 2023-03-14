import 'package:http/http.dart' as http;

class ComicsList {
  List<Comics>? comics;
  ComicsList({this.comics});

  factory ComicsList.fromJson(Map<String, dynamic> json) {
    var comicsJson = json['comics'] as List;

    List<Comics>? comicsList =
        comicsJson.map((e) => Comics.fromJson(e)).toList();

    return ComicsList(
      comics: comicsList,
    );
  }
}

class Comics {
  final String? name;
  final String? coverBook;
  String? favourite;

  Comics({this.name, this.coverBook, this.favourite});

  factory Comics.fromJson(Map<String, dynamic> json) {
    return Comics(
        name: json['name'] as String,
        coverBook: json['coverBook'] as String,
        favourite: json['favourite'] as String);
  }
}

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
