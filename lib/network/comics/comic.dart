import 'dart:convert';
import 'package:http/http.dart' as http;

class RC {
  bool? success;
  Data? data;

  RC({this.success, this.data});

  RC.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? langId;
  int? comicId;
  String? title;
  String? description;
  String? image;
  int? number;
  List<Pages>? pages;
  Comic? comic;

  Data(
      {this.id,
      this.langId,
      this.comicId,
      this.title,
      this.description,
      this.image,
      this.number,
      this.pages,
      this.comic});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    langId = json['lang_id'];
    comicId = json['comic_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    number = json['number'];
    if (json['pages'] != null) {
      pages = <Pages>[];
      json['pages'].forEach((v) {
        pages!.add(Pages.fromJson(v));
      });
    }
    comic = json['comic'] != null ? Comic.fromJson(json['comic']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['lang_id'] = langId;
    data['comic_id'] = comicId;
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['number'] = number;
    if (pages != null) {
      data['pages'] = pages!.map((v) => v.toJson()).toList();
    }
    if (comic != null) {
      data['comic'] = comic!.toJson();
    }
    return data;
  }
}

class Pages {
  int? id;
  int? pageNumber;
  String? image;

  Pages({this.id, this.pageNumber, this.image});

  Pages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pageNumber = json['page_number'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['page_number'] = pageNumber;
    data['image'] = image;
    return data;
  }
}

class Comic {
  int? id;
  String? name;

  Comic({this.id, this.name});

  Comic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

Future<RC> getData() async {
  var response = await http.get(
    Uri.parse("https://msofter.com/narty/api/comics/13"),
    headers: <String, String>{
      'Content-Type': 'text/plain; charset=UTF-8',
      'Accept': 'application/json',
    },
  );

  if (response.statusCode == 200) {
    RC report = RC.fromJson(jsonDecode(response.body));
    return report;
  } else {
    throw Exception('Error: ${response.statusCode}');
  }
}
