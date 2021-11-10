// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filmes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilmesController on _FilmesControllerBase, Store {
  final _$listaFilmesAtom = Atom(name: '_FilmesControllerBase.listaFilmes');

  @override
  List<FilmesModel> get listaFilmes {
    _$listaFilmesAtom.reportRead();
    return super.listaFilmes;
  }

  @override
  set listaFilmes(List<FilmesModel> value) {
    _$listaFilmesAtom.reportWrite(value, super.listaFilmes, () {
      super.listaFilmes = value;
    });
  }

  final _$setarListaFilmesAsyncAction =
      AsyncAction('_FilmesControllerBase.setarListaFilmes');

  @override
  Future<void> setarListaFilmes() {
    return _$setarListaFilmesAsyncAction.run(() => super.setarListaFilmes());
  }

  @override
  String toString() {
    return '''
listaFilmes: ${listaFilmes}
    ''';
  }
}
