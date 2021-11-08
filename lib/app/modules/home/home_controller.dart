import 'package:flutter_t3t4/app/modules/home/home_repository/i_home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final IHomeRepository repository;
  HomeControllerBase(this.repository) {
    repository.getListaUsuarios();
  }

  @observable
  bool passwordVisibility = true;

  @observable
  String erro = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void changePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
  }

  @action
  Future<void> login(String email, String password) async {
    var lista = await repository.getListaUsuarios();
    try {
      for (var i = 0; i < lista.length; i++) {
        if (email == lista[i].email && password == lista[i].senha) {}
      }
    } catch (e) {
      erro = 'Dados de usuário incorretos. Tente novamente.';
    }
  }
}
