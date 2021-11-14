// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_poluicao_realtime_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReportPoluicaoRealtimeStore on _ReportPoluicaoRealtimeStoreBase, Store {
  Computed<ObservableList<ReportPoluicaoModel>>? _$getInformationsComputed;

  @override
  ObservableList<ReportPoluicaoModel> get getInformations =>
      (_$getInformationsComputed ??=
              Computed<ObservableList<ReportPoluicaoModel>>(
                  () => super.getInformations,
                  name: '_ReportPoluicaoRealtimeStoreBase.getInformations'))
          .value;

  final _$isLoadingAtom =
      Atom(name: '_ReportPoluicaoRealtimeStoreBase.isLoading');

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

  final _$listaPoluicaoAtom =
      Atom(name: '_ReportPoluicaoRealtimeStoreBase.listaPoluicao');

  @override
  ObservableList<ReportPoluicaoModel> get listaPoluicao {
    _$listaPoluicaoAtom.reportRead();
    return super.listaPoluicao;
  }

  @override
  set listaPoluicao(ObservableList<ReportPoluicaoModel> value) {
    _$listaPoluicaoAtom.reportWrite(value, super.listaPoluicao, () {
      super.listaPoluicao = value;
    });
  }

  final _$findAllPoluicaosAsyncAction =
      AsyncAction('_ReportPoluicaoRealtimeStoreBase.findAllPoluicaos');

  @override
  Future findAllPoluicaos() {
    return _$findAllPoluicaosAsyncAction.run(() => super.findAllPoluicaos());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listaPoluicao: ${listaPoluicao},
getInformations: ${getInformations}
    ''';
  }
}
