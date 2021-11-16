import 'package:flutter_t3t4/app/models/user_login_model.dart';
import 'i_home_repository.dart';

class HomeRepository implements IHomeRepository {
  var listaTeste = [
    UserLoginModel(user: 'caaroolinag', senha: 'Carol123'),
    UserLoginModel(user: '', senha: '')
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
