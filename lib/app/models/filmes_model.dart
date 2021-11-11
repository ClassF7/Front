class FilmesModel {
  List<Results>? results;

  FilmesModel({required this.results});

  FilmesModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      var results = <Results>[];
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  late int id;
  late String name;
  late String theme;
  late String available;
  late double rating;
  late String poster;

  Results(
      {required this.id,
      required this.name,
      required this.theme,
      required this.available,
      required this.rating,
      required this.poster});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    theme = json['theme'];
    available = json['available'];
    rating = json['rating'];
    poster = json['poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['theme'] = theme;
    data['available'] = available;
    data['rating'] = rating;
    data['poster'] = poster;
    return data;
  }
}
