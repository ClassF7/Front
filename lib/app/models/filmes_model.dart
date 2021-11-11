class FilmesModel {
  final String imagem;
  final int id;
  final String nome;
  final String disponivel;
  final double rating;
  final String tema;

  FilmesModel(
      {required this.id,
      required this.nome,
      required this.disponivel,
      required this.rating,
      required this.tema,
      required this.imagem});
}
