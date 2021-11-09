import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'i_filmes_repository.dart';

class FilmesRepository implements IFilmesRepository {
  var teste = [
    FilmesModel(
        imagem:
            'https://legadodamarvel.com.br/wp-content/uploads/2021/02/poster-homem-aranha-3-legadodamarvel-725x1024.jpg')
  ];
  @override
  Future<List<FilmesModel>> getListaFilmes() async {
    var listaFilmes = <FilmesModel>[];
    for (var filme in teste) {
      listaFilmes.add(filme);
    }
    return listaFilmes;
  }
}
