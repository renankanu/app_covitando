// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $VaccineController = BindInject(
  (i) => VaccineController(i<VaccineRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VaccineController on _VaccineControllerBase, Store {
  final _$valueAtom = Atom(name: '_VaccineControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$getVaccinesAsyncAction =
      AsyncAction('_VaccineControllerBase.getVaccines');

  @override
  Future getVaccines() {
    return _$getVaccinesAsyncAction.run(() => super.getVaccines());
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
