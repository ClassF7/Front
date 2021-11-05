import 'package:flutter/material.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Porjeto Muliru',
                    style:
                        TextStyle(fontSize: 64, color: AppColors.titleColor)),
                SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .55,
            width: double.maxFinite,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/projfilmesbanner.png'),
            ),
          ),
        ],
      ),
    );
  }
}
