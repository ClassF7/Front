import 'package:flutter_t3t4/app/models/review_model.dart';

abstract class IReviewsRepository {
  Future<List<ReviewsModel>> getListaReviews();
}
