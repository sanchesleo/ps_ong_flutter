import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ps_app_ong/components/app_bar.dart';
import 'package:ps_app_ong/components/footer_app.dart';
import 'package:ps_app_ong/components/list_tile_component.dart';
import 'package:ps_app_ong/model/reports/report_geleira_model.dart';
import 'package:ps_app_ong/model/reports/screen_arguments.dart';
import 'package:ps_app_ong/screens/loading/report_loading.dart';
import 'package:ps_app_ong/store/report/geleira/report_geleira_realtime_store.dart';

class ReportGeleiraRealtimeScreen extends StatefulWidget {
  const ReportGeleiraRealtimeScreen({Key? key}) : super(key: key);

  @override
  _ReportGeleiraRealtimeScreenState createState() =>
      _ReportGeleiraRealtimeScreenState();
}

class _ReportGeleiraRealtimeScreenState
    extends State<ReportGeleiraRealtimeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenArguments reportCategorie =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    ReportGeleiraRealTimeStore reportGeleiraStore =
        ReportGeleiraRealTimeStore();

    return Scaffold(
      appBar: appBarComponent(),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(77, 114, 152, 1),
              ),
              child: Center(
                child: Text(
                  'Reports',
                  style: TextStyle(
                    color: Color.fromRGBO(207, 152, 52, 1),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                listTileContent(
                  context,
                  'Real Time',
                  '/report-categorie-realtime',
                  'Real Time',
                ),
                const SizedBox(
                  height: 20,
                ),
                listTileContent(
                  context,
                  'Base Histórica',
                  '/report-categorie-historico',
                  'Base Histórica',
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 50),
            child: Text(
              reportCategorie.reportType,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromRGBO(110, 92, 60, 1),
                fontSize: 35,
                fontFamily: 'Roboto Light',
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(240, 202, 132, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  reportCategorie.reportTitle,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color.fromRGBO(110, 92, 60, 1),
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  reportCategorie.reportDescription,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color.fromRGBO(110, 92, 60, 1),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Observer(builder: (ctx) {
                      if (reportGeleiraStore.isLoading) {
                        return const ScreenReportLoading();
                      }
                      return buildListViewBuilderGeleira(
                        reportGeleiraStore.getInformations,
                      );
                    })
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(242, 223, 188, 1),
                      onPrimary: const Color.fromRGBO(110, 92, 60, 1),
                      side: const BorderSide(
                        color: Color.fromRGBO(110, 92, 60, 1),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'VOLTAR',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: const FooterApp(),
    );
  }

  Expanded buildListViewBuilderGeleira(
      List<ReportGeleiraModel> listGeleiraContent) {
    return Expanded(
      child: SizedBox(
        height: 170,
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: listGeleiraContent.length,
            itemBuilder: (context, index) {
              ReportGeleiraModel reportGeleiraModel = listGeleiraContent[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: columnGeleiraContent(reportGeleiraModel),
              );
            },
          ),
        ),
      ),
    );
  }

  Column columnGeleiraContent(ReportGeleiraModel reportGeleiraModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: 25,
          height: (reportGeleiraModel.qtdGeleira.toDouble()) * 8,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(110, 92, 60, 1),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '${reportGeleiraModel.mes}/${reportGeleiraModel.ano}',
          style: const TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(110, 92, 60, 1),
          ),
        ),
      ],
    );
  }
}
