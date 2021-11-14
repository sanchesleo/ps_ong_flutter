import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/reports/report_ph_model.dart';
import 'package:ps_app_ong/services/service_api.dart';
part 'report_ph_historico_store.g.dart';

class ReportPHHistoricoStore = _ReportPHHistoricoStoreBase
    with _$ReportPHHistoricoStore;

abstract class _ReportPHHistoricoStoreBase with Store {
  final ServiceApi serviceApi = ServiceApi();
  List<ReportPHModel> _listaPHLocal = <ReportPHModel>[];

  _ReportPHHistoricoStoreBase() {
    init();
  }

  init() async {
    isLoading = true;
    _listaPHLocal = await serviceApi.findAllPhHistoricoReport();
    listaPh = _listaPHLocal.asObservable();
    isLoading = false;
  }

  @observable
  bool isLoading = false;

  @observable
  ObservableList<ReportPHModel> listaPh = <ReportPHModel>[].asObservable();

  @action
  findAllPhs() async {
    init();
  }

  @computed
  ObservableList<ReportPHModel> get getInformations {
    return listaPh;
  }
}
