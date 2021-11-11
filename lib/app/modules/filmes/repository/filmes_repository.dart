import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'package:flutter_t3t4/app/modules/network/network_helper.dart';
import 'i_filmes_repository.dart';

class FilmesRepository implements IFilmesRepository {
  NetworkHelper helper =
      NetworkHelper(url: 'http://localhost:8080/movies?n=&t=&a=');

  @override
  Future<List<FilmesModel>> getListaFilmes() async {
    var listaFilmes = <FilmesModel>[];
    FilmesModelApi filmesModelApi =
        FilmesModelApi.fromJson(await helper.getData());
    var filmesModel = filmesModelApi.results!;
    for (var element in filmesModel) {
      listaFilmes.add(FilmesModel(
          id: element.id,
          name: element.name,
          theme: element.theme,
          available: element.available,
          rating: element.rating,
          poster: element.poster));
    }
    return listaFilmes;
  }
}
