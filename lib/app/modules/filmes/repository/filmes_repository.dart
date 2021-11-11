import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'package:flutter_t3t4/app/modules/network/network_helper.dart';
import 'i_filmes_repository.dart';

class FilmesRepository implements IFilmesRepository {
  NetworkHelper helper =
      NetworkHelper(url: 'http://localhost:8080/movies?n=&t=&a=');

  var listaFilmes = <FilmesModel>[];

  @override
  Future<List<FilmesModel>> getListaFilmes() async {
    return listaFilmes;
  }
}
