import 'package:flutter/material.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class TelaReview extends StatefulWidget {
  const TelaReview({Key? key}) : super(key: key);

  @override
  _TelaReviewState createState() => _TelaReviewState();
}

class _TelaReviewState extends State<TelaReview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Porjeto Muliro',
                    style: TextStyle(fontSize: 64, color: AppColors.titleColor),
                  ),
                  const Text(
                    'Filmes',
                    style:
                        TextStyle(fontSize: 32, color: AppColors.subTitleColor),
                  ),
                  const Text(
                    'Séries',
                    style:
                        TextStyle(fontSize: 32, color: AppColors.subTitleColor),
                  ),
                  SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                        child: const Text(
                          'Sair',
                          style: TextStyle(fontSize: 24),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.purpleWindow,
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network('https://http2.mlstatic.com/D_NQ_NP_698947-MLB26819450524_022018-O.jpg'),
                  
                ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
