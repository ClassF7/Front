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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 30, top: 25),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .82,
                  decoration: const BoxDecoration(
                    color: AppColors.purpleWindow,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Container(
                    width: 350,
                    child: Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 350,
                            height: 520,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://http2.mlstatic.com/D_NQ_NP_698947-MLB26819450524_022018-O.jpg'),
                              ),
                            ),
                          ),
                          const Text(
                            'verdade nua e crua',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text(
                            'Avaliação: ',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          const Text(
                            'Gênero: ',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          const Text(
                            'Disponível: ',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 0,
                        endIndent: 20,
                        width: 20,
                      ),
                      Column(
                        children: [Container(), Container()],
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
