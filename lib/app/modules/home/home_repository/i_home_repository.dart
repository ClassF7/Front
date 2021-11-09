import 'package:flutter_t3t4/app/models/user_login_model.dart';

abstract class IHomeRepository {
  Future<List<UserLoginModel>> getListaUsuarios();

}