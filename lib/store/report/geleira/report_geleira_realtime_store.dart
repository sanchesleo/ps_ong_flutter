import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/reports/report_geleira_model.dart';
import 'package:ps_app_ong/services/service_api.dart';
part 'report_geleira_realtime_store.g.dart';

class ReportGeleiraRealTimeStore = _ReportGeleiraRealTimeStore
    with _$ReportGeleiraRealTimeStore;

abstract class _ReportGeleiraRealTimeStore with Store {
  final ServiceApi serviceApi = ServiceApi();
  List<ReportGeleiraModel> _listaGeleiraLocal = <ReportGeleiraModel>[];

  _ReportGeleiraRealTimeStore() {
    init();
  }

  init() async {
    isLoading = true;
    _listaGeleiraLocal = await serviceApi.findAllGeleiraRealtimeReport();
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
