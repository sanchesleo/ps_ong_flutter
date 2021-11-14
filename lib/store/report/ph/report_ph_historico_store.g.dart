// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_ph_historico_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReportPHHistoricoStore on _ReportPHHistoricoStoreBase, Store {
  Computed<ObservableList<ReportPHModel>>? _$getInformationsComputed;

  @override
  ObservableList<ReportPHModel> get getInformations =>
      (_$getInformationsComputed ??= Computed<ObservableList<ReportPHModel>>(
              () => super.getInformations,
              name: '_ReportPHHistoricoStoreBase.getInformations'))
          .value;

  final _$isLoadingAtom = Atom(name: '_ReportPHHistoricoStoreBase.isLoading');

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

  final _$listaPhAtom = Atom(name: '_ReportPHHistoricoStoreBase.listaPh');

  @override
  ObservableList<ReportPHModel> get listaPh {
    _$listaPhAtom.reportRead();
    return super.listaPh;
  }

  @override
  set listaPh(ObservableList<ReportPHModel> value) {
    _$listaPhAtom.reportWrite(value, super.listaPh, () {
      super.listaPh = value;
    });
  }

  final _$findAllPhsAsyncAction =
      AsyncAction('_ReportPHHistoricoStoreBase.findAllPhs');

  @override
  Future findAllPhs() {
    return _$findAllPhsAsyncAction.run(() => super.findAllPhs());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listaPh: ${listaPh},
getInformations: ${getInformations}
    ''';
  }
}
