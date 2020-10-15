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
  final _$vaccineModelAtom = Atom(name: '_VaccineControllerBase.vaccineModel');

  @override
  VaccineModel get vaccineModel {
    _$vaccineModelAtom.reportRead();
    return super.vaccineModel;
  }

  @override
  set vaccineModel(VaccineModel value) {
    _$vaccineModelAtom.reportWrite(value, super.vaccineModel, () {
      super.vaccineModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_VaccineControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
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
vaccineModel: ${vaccineModel},
isLoading: ${isLoading}
    ''';
  }
}
