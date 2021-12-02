import 'package:flutter_t3t4/app/modules/home/repository/i_home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final IHomeRepository repository;
  HomeControllerBase(this.repository) {
    setarListaUsuarios();
  }

  @observable
  bool passwordVisibility = true;

  @observable
  String erro = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  var lista = [];

  @action
  Future<void> setarListaUsuarios() async {
    lista = await repository.getListaUsuarios();
  }

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
  bool login(String email, String password) {
    for (var i = 0; i < lista.length; i++) {
      if (email == lista[i].user && password == lista[i].senha) {
        return true;
      }
    }
    erro = 'Dados de usuário incorretos. Tente novamente.';
    return false;
  }
}
