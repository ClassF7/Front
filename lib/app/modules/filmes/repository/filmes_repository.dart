import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'i_filmes_repository.dart';

class FilmesRepository implements IFilmesRepository {
  var listaTeste = [
    FilmesModel(
      imagem:
          ' https://img.elo7.com.br/product/zoom/2677C73/big-poster-filme-o-espetacular-homem-aranha-2012-lo05-90x60-geek.jpg',
    ),
    FilmesModel(
      imagem:
          'https://ovicio.com.br/wp-content/uploads/2019/03/20190314-avengers-endgame-poster.jpg',
    )
  ];
  @override
  Future<List<FilmesModel>> getListaFilmes() async {
    var listaFilmes = <FilmesModel>[];
    for (var filme in listaTeste) {
      listaFilmes.add(filme);
    }
    return listaFilmes;
  }
}
