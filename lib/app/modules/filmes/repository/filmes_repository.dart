import 'package:flutter_t3t4/app/models/filmes_model.dart';
import 'i_filmes_repository.dart';

class FilmesRepository implements IFilmesRepository {
  var listaTeste = [
    FilmesModel(
        imagem:
            'https://upload.wikimedia.org/wikipedia/pt/1/10/A_arte_de_correr_na_chuva.jpg'),
    FilmesModel(
        imagem:
            'https://upload.wikimedia.org/wikipedia/pt/f/f9/Elysium_Poster.jpg'),
    FilmesModel(
        imagem:
            'https://upload.wikimedia.org/wikipedia/pt/9/94/Cosmos_T%C3%ADtulo.jpg'),
    FilmesModel(
        imagem:
            'https://cdn.ome.lt/gpMrkAyzxuJHljmwSkdF1_1iCn4=/200x0/smart/extras/capas/meu_amigo_enzo_2019.jpg'),
    FilmesModel(
        imagem:
            'https://media.fstatic.com/JQDGu-RFfOP_s0JybtxgCxVpu90=/290x478/smart/media/movies/covers/2014/10/the-boy-next-door_t85595.jpg')
  ];
  @override
  Future<List<FilmesModel>> getListaFilmes() async {
    return listaTeste;
  }
}
