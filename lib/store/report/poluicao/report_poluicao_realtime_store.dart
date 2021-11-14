import 'package:mobx/mobx.dart';
import 'package:ps_app_ong/model/reports/report_poluicao_model.dart';
import 'package:ps_app_ong/services/service_api.dart';
part 'report_poluicao_realtime_store.g.dart';

class ReportPoluicaoRealtimeStore = _ReportPoluicaoRealtimeStoreBase
    with _$ReportPoluicaoRealtimeStore;

abstract class _ReportPoluicaoRealtimeStoreBase with Store {
  final ServiceApi serviceApi = ServiceApi();
  List<ReportPoluicaoModel> _listaPoluicaoLocal = <ReportPoluicaoModel>[];

  _ReportPoluicaoRealtimeStoreBase() {
    init();
  }

  init() async {
    isLoading = true;
    _listaPoluicaoLocal = await serviceApi.findAllPoluicaoRealtimeReport();
    listaPoluicao = _listaPoluicaoLocal.asObservable();
    isLoading = false;
  }

  @observable
  bool isLoading = false;

  @observable
  ObservableList<ReportPoluicaoModel> listaPoluicao =
      <ReportPoluicaoModel>[].asObservable();

  @action
  findAllPoluicaos() async {
    init();
  }

  @computed
  ObservableList<ReportPoluicaoModel> get getInformations {
    return listaPoluicao;
  }
}
