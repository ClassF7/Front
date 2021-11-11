import 'package:flutter_t3t4/app/models/review_model.dart';
import 'package:flutter_t3t4/app/modules/reviews/repository/i_reviews_repository.dart';
import 'package:flutter_t3t4/app/modules/reviews/repository/reviews_repository.dart';
import 'package:mobx/mobx.dart';

part 'review_controller.g.dart';

class ReviewController = _ReviewControllerBase with _$ReviewController;

abstract class _ReviewControllerBase with Store {
  final int index;
  final IReviewsRepository repository = ReviewsRepository(idFilme: index);
  //adicionar o id do filme de alguma forma no repository
  _ReviewControllerBase(this.index) {
    setarListaReviews();
  }

  @observable
  var listaReviews = <ReviewsModel>[];

  @action
  Future<void> setarListaReviews() async {
    listaReviews = await repository.getListaReviews();
  }
}
