import 'package:flutter_t3t4/app/models/user_login_model.dart';
import 'package:flutter_t3t4/app/modules/home/home_repository/i_home_repository.dart';

class HomeRepository implements IHomeRepository {
  var listaTeste = [
    UserLoginModel(email: 'samuka@maua.br', senha: 'bunda'),
    UserLoginModel(email: 'darth@maua.br', senha: 'cuzao'),
    UserLoginModel(email: 'renan@pinto.br', senha: 'senha'),
    UserLoginModel(email: 'email', senha: 'senha')
  ];
  @override
  Future<List<UserLoginModel>> getListaUsuarios() async {
    var listaUsuarios = <UserLoginModel>[];
    for (var usuario in listaTeste) {
      listaUsuarios.add(usuario);
    }
    return listaUsuarios;
  }
}
