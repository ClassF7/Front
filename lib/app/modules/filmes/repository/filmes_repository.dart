import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'i_filmes_repository.dart';

class FilmesRepository implements IFilmesRepository {
  var listaTeste = [
    FilmesModel(
      imagem:
          'https://legadodamarvel.com.br/wp-content/uploads/2021/11/homem-aranha-poster-duende-verde-legadoamarvel-750x938.jpg',
    ),
    FilmesModel(
      imagem:
          'https://ovicio.com.br/wp-content/uploads/2019/03/20190314-avengers-endgame-poster.jpg',
    )
  ];
  @override
  Future<List<FilmesModel>> getListaFilmes() async {
    return listaTeste;
  }
}
