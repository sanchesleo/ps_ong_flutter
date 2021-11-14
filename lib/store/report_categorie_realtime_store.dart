import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/report_categories_model.dart';
import 'package:ps_app_ong/repository/report_categories_realtime_repository.dart';
part 'report_categorie_realtime_store.g.dart';

class ReportCategorieRealTimeStore = _ReportCategorieRealTimeStoreBase
    with _$ReportCategorieRealTimeStore;

abstract class _ReportCategorieRealTimeStoreBase with Store {
  ReportCategoriesRealtimeRepository reportCategorieRealTimeStore =
      ReportCategoriesRealtimeRepository();

  _ReportCategorieRealTimeStoreBase() {
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
        reportCategorieRealTimeStore.findAllReportCategories().asObservable();
  }
}
