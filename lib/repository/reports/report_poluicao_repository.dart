import 'package:ps_app_ong/model/reports/report_poluicao_model.dart';

class ReportPoluicaoRepository {
  List<ReportPoluicaoModel> getAllReportPoluicao() {
    List<ReportPoluicaoModel> listReportPoluicaoContent = <ReportPoluicaoModel>[
      ReportPoluicaoModel(
        ano: 2020,
        qtdPoluicao: 15,
        tipo: 'PLÁSTICO',
        title: 'Relatório Poluicao',
        description:
            'Relatório gerado com a quantidade de Poluicao por mês e ano.',
      ),
      ReportPoluicaoModel(
        ano: 2020,
        qtdPoluicao: 18,
        tipo: 'METAL',
        title: 'Relatório Poluicao',
        description:
            'Relatório gerado com a quantidade de Poluicao por mês e ano.',
      ),
      ReportPoluicaoModel(
        ano: 2020,
        qtdPoluicao: 5,
        tipo: 'COMPONENTES QUÍMICOS',
        title: 'Relatório Poluicao',
        description:
            'Relatório gerado com a quantidade de Poluicao por mês e ano.',
      ),
      ReportPoluicaoModel(
        ano: 2020,
        qtdPoluicao: 4,
        tipo: 'LIQUIDOS',
        title: 'Relatório Poluicao',
        description:
            'Relatório gerado com a quantidade de Poluicao por mês e ano.',
      ),
    ];

    return listReportPoluicaoContent;
  }
}
