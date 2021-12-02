import 'package:flutter_t3t4/app/models/review_model.dart';
import 'package:flutter_t3t4/app/modules/network/network_helper.dart';
import 'package:flutter_t3t4/app/modules/reviews/repository/i_reviews_repository.dart';

class ReviewsRepository implements IReviewsRepository {
  @override
  Future<List<ReviewsModel>> getListaReviews(int idFilme) async {
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
          comment: element.comment,
          idMovie: element.idMovie,
          nmUser: element.nmUser));
    }
    return listaReviews;
  }
}
