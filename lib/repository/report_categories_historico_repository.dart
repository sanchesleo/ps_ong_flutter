import 'package:ps_app_ong/model/report_categories_model.dart';

class ReportCategoriesHistoricoRepository {
  Future<List<ReportCategoryModel>> findAllReportCategories() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    List<ReportCategoryModel> listCategorie = <ReportCategoryModel>[
      ReportCategoryModel(
        'RELATÓRIO PH',
        'Relatórios por base histórica pela ONU referente a quantidade de PH na água.',
        'Base Histórica',
        '/report-ph-historico',
      ),
      ReportCategoryModel(
        'RELATÓRIO GELEIRAS',
        'Relatórios gerados a partir de base histórica da ONU referente a quantidade de geleiras',
        'Base Histórica',
        '/report-geleiras-historico',
      ),
      ReportCategoryModel(
        'RELATÓRIO POR POLUIÇÃO',
        'Relatórios gerados a partir de base histórica da ONU referente aos tipos de poluição no mar',
        'Base Histórica',
        '/report-poluicao-historico',
      ),
    ];

    return listCategorie;
  }
}
