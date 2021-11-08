// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$passwordVisibilityAtom =
      Atom(name: 'HomeControllerBase.passwordVisibility');

  @override
  bool get passwordVisibility {
    _$passwordVisibilityAtom.reportRead();
    return super.passwordVisibility;
  }

  @override
  set passwordVisibility(bool value) {
    _$passwordVisibilityAtom.reportWrite(value, super.passwordVisibility, () {
      super.passwordVisibility = value;
    });
  }

  final _$erroAtom = Atom(name: 'HomeControllerBase.erro');

  @override
  String get erro {
    _$erroAtom.reportRead();
    return super.erro;
  }

  @override
  set erro(String value) {
    _$erroAtom.reportWrite(value, super.erro, () {
      super.erro = value;
    });
  }

  final _$emailAtom = Atom(name: 'HomeControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: 'HomeControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('HomeControllerBase.login');

  @override
  Future<void> login(String email, String password) {
    return _$loginAsyncAction.run(() => super.login(email, password));
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordVisibility() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changePasswordVisibility');
    try {
      return super.changePasswordVisibility();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisibility: ${passwordVisibility},
erro: ${erro},
email: ${email},
password: ${password}
    ''';
  }
}
