// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_geleira_historico_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReportGeleiraHistoricoStore on _ReportGeleiraHistoricoStore, Store {
  Computed<ObservableList<ReportGeleiraModel>>? _$getInformationsComputed;

  @override
  ObservableList<ReportGeleiraModel> get getInformations =>
      (_$getInformationsComputed ??=
              Computed<ObservableList<ReportGeleiraModel>>(
                  () => super.getInformations,
                  name: '_ReportGeleiraHistoricoStore.getInformations'))
          .value;

  final _$isLoadingAtom = Atom(name: '_ReportGeleiraHistoricoStore.isLoading');

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

  final _$listaGeleirasAtom =
      Atom(name: '_ReportGeleiraHistoricoStore.listaGeleiras');

  @override
  ObservableList<ReportGeleiraModel> get listaGeleiras {
    _$listaGeleirasAtom.reportRead();
    return super.listaGeleiras;
  }

  @override
  set listaGeleiras(ObservableList<ReportGeleiraModel> value) {
    _$listaGeleirasAtom.reportWrite(value, super.listaGeleiras, () {
      super.listaGeleiras = value;
    });
  }

  final _$findAllGeleirasAsyncAction =
      AsyncAction('_ReportGeleiraHistoricoStore.findAllGeleiras');

  @override
  Future findAllGeleiras() {
    return _$findAllGeleirasAsyncAction.run(() => super.findAllGeleiras());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listaGeleiras: ${listaGeleiras},
getInformations: ${getInformations}
    ''';
  }
}
