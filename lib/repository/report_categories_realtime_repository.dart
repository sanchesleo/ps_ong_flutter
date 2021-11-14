import 'package:ps_app_ong/model/report_categories_model.dart';

class ReportCategoriesRealtimeRepository {
  Future<List<ReportCategoryModel>> findAllReportCategories() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    List<ReportCategoryModel> listCategorie = <ReportCategoryModel>[
      ReportCategoryModel(
        'RELATÓRIO PH',
        'Relatórios gerados em tempo real referentes ao PH da água pela ONU.',
        'Real Time',
        '/report-ph-realtime',
      ),
      ReportCategoryModel(
        'RELATÓRIO GELEIRAS',
        'Relatórios gerados em real time pela ONU referentes a quantidade de geleira.',
        'Real Time',
        '/report-geleiras-realtime',
      ),
      ReportCategoryModel(
        'RELATÓRIO POR POLUIÇÃO',
        'Relatórios gerados em real time pela ONU referentes a poluição no mar.',
        'Real Time',
        '/report-poluicao-realtime',
      ),
    ];

    return listCategorie;
  }
}
