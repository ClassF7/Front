import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_t3t4/app/modules/filmes/controller/filmes_controller.dart';
import 'package:flutter_t3t4/app/modules/reviews/tela_review.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class TelaLogado extends StatefulWidget {
  const TelaLogado({Key? key}) : super(key: key);

  @override
  _TelaLogadoState createState() => _TelaLogadoState();
}

class _TelaLogadoState extends State<TelaLogado> {
  @override
  Widget build(BuildContext context) {
    var controller = FilmesController();
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
                    'Porjeto Muliru',
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
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 48),
              child: Text(
                'Bem Vindo ao porjeto Muliro',
                style: TextStyle(fontSize: 32, color: Color(0xFF8A8EDC)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 48, top: 8),
              child: Text(
                'Aqui temos inúmeros filmes para você avaliar!',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Observer(builder: (_) {
                  return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 190 / 270,
                        crossAxisSpacing: 40,
                        mainAxisSpacing: 56,
                        crossAxisCount: 6,
                      ),
                      itemCount: controller.listaFilmes.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelaReview(
                                  filme: controller.listaFilmes[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    controller.listaFilmes[index].poster),
                              ),
                            ),
                          ),
                        );
                      });
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
