import 'package:flutter/material.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class TelaLogado extends StatefulWidget {
  TelaLogado({Key? key}) : super(key: key);

  @override
  _TelaLogadoState createState() => _TelaLogadoState();
}

class _TelaLogadoState extends State<TelaLogado> {
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
          ],
        ),
      ),
    );
  }
}
