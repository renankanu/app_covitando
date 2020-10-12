// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$worldModelAtom = Atom(name: '_HomeControllerBase.worldModel');

  @override
  WorldModel get worldModel {
    _$worldModelAtom.reportRead();
    return super.worldModel;
  }

  @override
  set worldModel(WorldModel value) {
    _$worldModelAtom.reportWrite(value, super.worldModel, () {
      super.worldModel = value;
    });
  }

  final _$getInfoMundoAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoMundo');

  @override
  Future getInfoMundo() {
    return _$getInfoMundoAsyncAction.run(() => super.getInfoMundo());
  }

  @override
  String toString() {
    return '''
worldModel: ${worldModel}
    ''';
  }
}
