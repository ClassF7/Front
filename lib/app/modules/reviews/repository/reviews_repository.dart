import 'package:flutter_t3t4/app/models/review_model.dart';
import 'package:flutter_t3t4/app/modules/network/network_helper.dart';
import 'package:flutter_t3t4/app/modules/reviews/repository/i_reviews_repository.dart';

class ReviewsRepository implements IReviewsRepository {
  final int idFilme;
  ReviewsRepository({required this.idFilme});

  @override
  Future<List<ReviewsModel>> getListaReviews() async {
    NetworkHelper helper =
        NetworkHelper(url: 'http://localhost:8080/reviews/$idFilme');
    var listaReviews = <ReviewsModel>[];
    ReviewsModelApi reviewsModelApi =
        ReviewsModelApi.fromJson(await helper.getData());
    var reviewModel = reviewsModelApi.results!;
    for (var element in reviewModel) {
      listaReviews.add(ReviewsModel(
          id: element.id,
          rating: element.rating,
          classification: element.classification,
          comment: element.comment,
          idMovie: element.idMovie,
          idUser: element.idUser));
    }
    return listaReviews;
  }
}
