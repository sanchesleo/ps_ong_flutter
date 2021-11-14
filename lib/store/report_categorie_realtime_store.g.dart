// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_categorie_realtime_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReportCategorieRealTimeStore
    on _ReportCategorieRealTimeStoreBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_ReportCategorieRealTimeStoreBase.loading'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_ReportCategorieRealTimeStoreBase.hasError'))
          .value;

  final _$listaReportCategoriesAtom =
      Atom(name: '_ReportCategorieRealTimeStoreBase.listaReportCategories');

  @override
  ObservableFuture<List<ReportCategoryModel>> get listaReportCategories {
    _$listaReportCategoriesAtom.reportRead();
    return super.listaReportCategories;
  }

  @override
  set listaReportCategories(ObservableFuture<List<ReportCategoryModel>> value) {
    _$listaReportCategoriesAtom.reportWrite(value, super.listaReportCategories,
        () {
      super.listaReportCategories = value;
    });
  }

  final _$_ReportCategorieRealTimeStoreBaseActionController =
      ActionController(name: '_ReportCategorieRealTimeStoreBase');

  @override
  void listReportCategories() {
    final _$actionInfo =
        _$_ReportCategorieRealTimeStoreBaseActionController.startAction(
            name: '_ReportCategorieRealTimeStoreBase.listReportCategories');
    try {
      return super.listReportCategories();
    } finally {
      _$_ReportCategorieRealTimeStoreBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaReportCategories: ${listaReportCategories},
loading: ${loading},
hasError: ${hasError}
    ''';
  }
}
