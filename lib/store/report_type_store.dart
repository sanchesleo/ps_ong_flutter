import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/report_type_model.dart';
import 'package:ps_app_ong/repository/report_type_repository.dart';
part 'report_type_store.g.dart';

class ReportTypeStore = _ReportTypeStoreBase with _$ReportTypeStore;

abstract class _ReportTypeStoreBase with Store {
  ReportTypeRepository reportTypeStore = ReportTypeRepository();

  _ReportTypeStoreBase() {
    listReportTypes();
  }

  @observable
  ObservableFuture<List<ReportTypeModel>> listaReportTypes =
      ObservableFuture.value([]);

  @computed
  bool get loading => listaReportTypes.status == FutureStatus.pending;

  @computed
  bool get hasError => listaReportTypes.error != null;

  @action
  void listReportTypes() {
    listaReportTypes = reportTypeStore.findAllReportTypes().asObservable();
  }
}
