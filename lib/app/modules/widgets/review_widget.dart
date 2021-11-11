import 'package:flutter/material.dart';
import 'package:getwidget/components/rating/gf_rating.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'buceta',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),
            const SizedBox(width: 20),
            GFRating(
              onChanged: (value) {},
              value: 3,
              color: Colors.amber,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Nao gostei, filme de macaco',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
