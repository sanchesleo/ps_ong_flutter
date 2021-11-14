import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/reports/report_geleira_model.dart';
import 'package:ps_app_ong/services/service_api.dart';
part 'report_geleira_historico_store.g.dart';

class ReportGeleiraHistoricoStore = _ReportGeleiraHistoricoStore
    with _$ReportGeleiraHistoricoStore;

abstract class _ReportGeleiraHistoricoStore with Store {
  final ServiceApi serviceApi = ServiceApi();
  List<ReportGeleiraModel> _listaGeleiraLocal = <ReportGeleiraModel>[];

  _ReportGeleiraHistoricoStore() {
    init();
  }

  init() async {
    isLoading = true;
    _listaGeleiraLocal = await serviceApi.findAllGeleiraHistoricoReport();
    listaGeleiras = _listaGeleiraLocal.asObservable();
    isLoading = false;
  }

  @observable
  bool isLoading = false;

  @observable
  ObservableList<ReportGeleiraModel> listaGeleiras =
      <ReportGeleiraModel>[].asObservable();

  @action
  findAllGeleiras() async {
    init();
  }

  @computed
  ObservableList<ReportGeleiraModel> get getInformations {
    return listaGeleiras;
  }
}
