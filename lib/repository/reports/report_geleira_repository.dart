import 'package:ps_app_ong/model/reports/report_geleira_model.dart';

class ReportGeleiraRepository {
  List<ReportGeleiraModel> getAllReportGeleira() {
    List<ReportGeleiraModel> listReportGeleiraContent = <ReportGeleiraModel>[
      ReportGeleiraModel(
        mes: 8,
        ano: 20,
        qtdGeleira: 2,
        title: 'Relatório Geleira',
        description:
            'Relatório gerado com a quantidade de geleira por mês e ano.',
      ),
      ReportGeleiraModel(
        mes: 9,
        ano: 20,
        qtdGeleira: 6,
        title: 'Relatório Geleira',
        description:
            'Relatório gerado com a quantidade de geleira por mês e ano.',
      ),
      ReportGeleiraModel(
        mes: 10,
        ano: 20,
        qtdGeleira: 8,
        title: 'Relatório Geleira',
        description:
            'Relatório gerado com a quantidade de geleira por mês e ano.',
      ),
      ReportGeleiraModel(
        mes: 11,
        ano: 20,
        qtdGeleira: 10,
        title: 'Relatório Geleira',
        description:
            'Relatório gerado com a quantidade de geleira por mês e ano.',
      ),
    ];

    return listReportGeleiraContent;
  }
}
