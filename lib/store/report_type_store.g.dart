// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_type_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReportTypeStore on _ReportTypeStoreBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_ReportTypeStoreBase.loading'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_ReportTypeStoreBase.hasError'))
          .value;

  final _$listaReportTypesAtom =
      Atom(name: '_ReportTypeStoreBase.listaReportTypes');

  @override
  ObservableFuture<List<ReportTypeModel>> get listaReportTypes {
    _$listaReportTypesAtom.reportRead();
    return super.listaReportTypes;
  }

  @override
  set listaReportTypes(ObservableFuture<List<ReportTypeModel>> value) {
    _$listaReportTypesAtom.reportWrite(value, super.listaReportTypes, () {
      super.listaReportTypes = value;
    });
  }

  final _$_ReportTypeStoreBaseActionController =
      ActionController(name: '_ReportTypeStoreBase');

  @override
  void listReportTypes() {
    final _$actionInfo = _$_ReportTypeStoreBaseActionController.startAction(
        name: '_ReportTypeStoreBase.listReportTypes');
    try {
      return super.listReportTypes();
    } finally {
      _$_ReportTypeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaReportTypes: ${listaReportTypes},
loading: ${loading},
hasError: ${hasError}
    ''';
  }
}
