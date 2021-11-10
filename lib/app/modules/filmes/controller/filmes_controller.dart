import 'package:flutter_t3t4/app/modules/filmes/repository/i_filmes_repository.dart';
import 'package:mobx/mobx.dart';

part 'filmes_controller.g.dart';

class FilmesController = _FilmesControllerBase with _$FilmesController;

abstract class _FilmesControllerBase with Store {
  final IFilmesRepository repository;
  _FilmesControllerBase(this.repository) {
    setarListaFilmes();
  }

  @observable
  var listaFilmes = [];

  @action
  Future<void> setarListaFilmes() async {
    listaFilmes = await repository.getListaFilmes();
  }
}
