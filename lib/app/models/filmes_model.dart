class FilmesModelApi {
  List<FilmesModel>? results;

  FilmesModelApi({required this.results});

  FilmesModelApi.fromJson(Map<String, dynamic> json) {
    if (json["results"] != null) {
      var resultados = <FilmesModel>[];
      json["results"].forEach((v) {
        resultados.add(FilmesModel.fromJson(v));
      });
      results = resultados;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data["results"] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FilmesModel {
  late int id;
  late String name;
  late String theme;
  late String available;
  late double rating;
  late String poster;

  FilmesModel(
      {required this.id,
      required this.name,
      required this.theme,
      required this.available,
      required this.rating,
      required this.poster});

  FilmesModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    theme = json["theme"];
    available = json["available"];
    rating = json["rating"];
    poster = json["poster"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["theme"] = theme;
    data["available"] = available;
    data["rating"] = rating;
    data["poster"] = poster;
    return data;
  }
}
