// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReviewController on _ReviewControllerBase, Store {
  final _$listaReviewsAtom = Atom(name: '_ReviewControllerBase.listaReviews');

  @override
  List<ReviewsModel> get listaReviews {
    _$listaReviewsAtom.reportRead();
    return super.listaReviews;
  }

  @override
  set listaReviews(List<ReviewsModel> value) {
    _$listaReviewsAtom.reportWrite(value, super.listaReviews, () {
      super.listaReviews = value;
    });
  }

  final _$setarListaReviewsAsyncAction =
      AsyncAction('_ReviewControllerBase.setarListaReviews');

  @override
  Future<void> setarListaReviews() {
    return _$setarListaReviewsAsyncAction.run(() => super.setarListaReviews());
  }

  @override
  String toString() {
    return '''
listaReviews: ${listaReviews}
    ''';
  }
}
