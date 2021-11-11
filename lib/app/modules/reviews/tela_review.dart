import 'package:flutter/material.dart';
import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'package:flutter_t3t4/app/modules/network/network_helper.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class TelaReview extends StatefulWidget {
  final FilmesModel filme;
  const TelaReview({Key? key, required this.filme}) : super(key: key);

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
                  child: SizedBox(
                    width: 350,
                    child: Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 350,
                            height: 520,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(widget.filme.poster),
                              ),
                            ),
                          ),
                          Text(
                            widget.filme.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 28),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Avaliação: ${widget.filme.rating}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            'Gênero: ${widget.filme.theme}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            'Disponível: ${widget.filme.available}',
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
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .72,
                            height: MediaQuery.of(context).size.height * .75,
                            margin: const EdgeInsets.only(
                                left: 20, bottom: 30, right: 20),
                            padding: const EdgeInsets.only(top: 25),
                            decoration: const BoxDecoration(
                              color: AppColors.titleColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Reviews',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: SizedBox(
                                    height: 260,
                                    width: 800,
                                    child: Expanded(
                                      child: ListView(
                                        shrinkWrap: true,
                                        children: [],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
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
