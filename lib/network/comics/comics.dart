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
