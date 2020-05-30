class GenresList {
  List<Genres> genres;

  GenresList({List<Genres> genres}) {
    this.genres = genres;
  }

  GenresList.fromJson(Map<String, dynamic> json) {
    if (json['genres'] != null) {
      genres = new List<Genres>();
      json['genres'].forEach((v) {
        genres.add(new Genres.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Genres {
  int id;
  String name;

  Genres({int id, String name}) {
    this.id = id;
    this.name = name;
  }

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
