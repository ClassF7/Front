import 'package:flutter_t3t4/app/models/filmes_model.dart';

abstract class IFilmesRepository {
  Future<List<FilmesModel>> getListaFilmes();
}
