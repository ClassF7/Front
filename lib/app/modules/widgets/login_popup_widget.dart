import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_t3t4/app/modules/filmes/tela_logado.dart';
import 'package:flutter_t3t4/app/modules/home/controller/home_controller.dart';
import 'package:flutter_t3t4/app/modules/home/repository/home_repository.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class LoginPopUpWidget extends StatelessWidget {
  const LoginPopUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var repository = HomeRepository();
    var controller = HomeController(repository);
    var emailController = TextEditingController(text: controller.email);
    var passwordController = TextEditingController(text: controller.password);
    return SimpleDialog(
        backgroundColor: AppColors.popUpColor,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
              child: Text(
                'Iniciar sessão',
                style: TextStyle(color: Colors.white, fontSize: 36),
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
            ),
            const SizedBox(
              width: 150,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
              color: AppColors.purpleButton,
              iconSize: 36,
            )
          ],
        ),
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: TextField(
                    style: const TextStyle(color: AppColors.textColor),
                    onChanged: controller.setEmail,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelStyle: TextStyle(color: AppColors.textColor),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: AppColors.purpleButton,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  child: Observer(
                    builder: (_) {
                      return TextField(
                        style: const TextStyle(color: AppColors.textColor),
                        onChanged: controller.setPassword,
                        controller: passwordController,
                        obscureText: controller.passwordVisibility,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle:
                              const TextStyle(color: AppColors.textColor),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          labelText: 'Senha',
                          suffixIcon: InkWell(
                            onTap: controller.changePasswordVisibility,
                            child: Icon(
                              controller.passwordVisibility
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColors.purpleButton,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.vpn_key,
                            color: AppColors.purpleButton,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Observer(builder: (_) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        controller.erro,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  width: 345,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 28),
                    ),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      controller.login(controller.email, controller.password)
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TelaLogado()))
                          : Container();
                      emailController.clear();
                      passwordController.clear();
                    },
                  ),
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            ),
            height: 700,
            width: 760,
          )
        ]);
  }
}
