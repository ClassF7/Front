class ReviewsModelApi {
  List<ReviewsModel>? results;

  ReviewsModelApi({required this.results});

  ReviewsModelApi.fromJson(Map<String, dynamic> json) {
    if (json["results"] != null) {
      results = <ReviewsModel>[];
      json["results"].forEach((v) {
        results!.add(ReviewsModel.fromJson(v));
      });
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

class ReviewsModel {
  late int id;
  late int idMovie;
  late int idUser;
  late String classification;
  late double rating;
  late String comment;

  ReviewsModel(
      {required this.id,
      required this.idMovie,
      required this.idUser,
      required this.classification,
      required this.rating,
      required this.comment});

  ReviewsModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    idMovie = json["idMovie"];
    idUser = json["idUser"];
    classification = json["classification"];
    rating = json["rating"];
    comment = json["comment"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["idMovie"] = idMovie;
    data["idUser"] = idUser;
    data["classification"] = classification;
    data["rating"] = rating;
    data["comment"] = comment;
    return data;
  }
}
