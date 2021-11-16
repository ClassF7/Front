import 'package:flutter/material.dart';
import 'package:flutter_t3t4/app/models/review_model.dart';
import 'package:getwidget/components/rating/gf_rating.dart';

class ReviewWidget extends StatelessWidget {
  final ReviewsModel review;
  const ReviewWidget({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 12, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  review.nmUser,
                  style: const TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              const SizedBox(width: 20),
              GFRating(
                onChanged: (value) {},
                value: review.rating / 2,
                color: Colors.amber,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              review.comment,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
