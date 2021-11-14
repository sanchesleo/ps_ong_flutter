import 'package:ps_app_ong/model/reports/report_ph_model.dart';

class ReportPHRepository {
  List<ReportPHModel> getAllReportPH() {
    List<ReportPHModel> listReportPHContent = <ReportPHModel>[
      ReportPHModel(
        ano: 2020,
        nivelPh: 6,
        title: 'RELATÓRIO DE PH',
        description: 'Descrição de relatório de ph',
      ),
      ReportPHModel(
        ano: 2021,
        nivelPh: 14,
        title: 'RELATÓRIO DE PH',
        description: 'Descrição de relatório de ph',
      ),
    ];

    return listReportPHContent;
  }
}
