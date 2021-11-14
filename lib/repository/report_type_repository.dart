import 'package:ps_app_ong/model/report_type_model.dart';

class ReportTypeRepository {
  Future<List<ReportTypeModel>> findAllReportTypes() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    List<ReportTypeModel> listType = <ReportTypeModel>[
      ReportTypeModel(
        'Real Time',
        'Relatórios gerados em tempo real referentes a ONU',
        'Real Time',
        '/report-categorie-realtime',
      ),
      ReportTypeModel(
        'Base Histórica',
        'Relatórios gerados a partir de base histórica da ONU',
        'Base Histórica',
        '/report-categorie-historico',
      ),
    ];

    return listType;
  }
}
