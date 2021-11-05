import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_t3t4/app/shared/themes/app_colors.dart';

class LoginPopUpWidget extends StatelessWidget {
  const LoginPopUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var passwordVisibility = true;
    return SimpleDialog(
        backgroundColor: AppColors.popUpColor,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        title: const Text(
          'Iniciar sessão',
          style: TextStyle(color: Colors.white, fontSize: 36),
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
        ),
        children: <Widget>[
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: TextField(
                    style: const TextStyle(color: AppColors.textColor),
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
                        controller: passwordController,
                        obscureText: passwordVisibility,
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
                            onTap: () {},
                            child: Icon(
                              passwordVisibility
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
                Container(
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
                    onPressed: () {},
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
