import 'package:flutter/material.dart';
import 'package:flutter_t3t4/app/modules/home/home_page.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porjeto Muliro',
      theme: ThemeData(
          colorScheme: const ColorScheme.dark().copyWith(
            primary: AppColors.purpleButton,
            secondary: AppColors.purpleButton,
            surface: AppColors.backgroundColor,
          ),
          scaffoldBackgroundColor: AppColors.backgroundColor),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
