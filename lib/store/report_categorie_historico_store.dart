import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/report_categories_model.dart';
import 'package:ps_app_ong/repository/report_categories_historico_repository.dart';
part 'report_categorie_historico_store.g.dart';

class ReportCategorieHistoricoStore = _ReportCategorieHistoricoStoreBase
    with _$ReportCategorieHistoricoStore;

abstract class _ReportCategorieHistoricoStoreBase with Store {
  ReportCategoriesHistoricoRepository reportCategorieHistoricoStore =
      ReportCategoriesHistoricoRepository();

  _ReportCategorieHistoricoStoreBase() {
    listReportCategories();
  }

  @observable
  ObservableFuture<List<ReportCategoryModel>> listaReportCategories =
      ObservableFuture.value([]);

  @computed
  bool get loading => listaReportCategories.status == FutureStatus.pending;

  @computed
  bool get hasError => listaReportCategories.error != null;

  @action
  void listReportCategories() {
    listaReportCategories =
        reportCategorieHistoricoStore.findAllReportCategories().asObservable();
  }
}
