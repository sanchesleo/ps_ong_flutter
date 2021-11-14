import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ps_app_ong/components/app_bar.dart';
import 'package:ps_app_ong/components/footer_app.dart';
import 'package:ps_app_ong/components/list_tile_component.dart';
import 'package:ps_app_ong/model/report_categories_model.dart';
import 'package:ps_app_ong/model/reports/screen_arguments.dart';
import 'package:ps_app_ong/screens/loading/report_screen_loading.dart';
import 'package:ps_app_ong/store/report_categorie_historico_store.dart';

class ReportCategorieHistoricoScreen extends StatefulWidget {
  const ReportCategorieHistoricoScreen({Key? key}) : super(key: key);

  @override
  _ReportCategorieHistoricoScreenState createState() =>
      _ReportCategorieHistoricoScreenState();
}

class _ReportCategorieHistoricoScreenState
    extends State<ReportCategorieHistoricoScreen> {
  late ReportCategorieHistoricoStore _store;
  late List<ReportCategoryModel> items;

  late String reportType;

  @override
  void initState() {
    _store = ReportCategorieHistoricoStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    reportType = ModalRoute.of(context)!.settings.arguments as String;

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
              reportType,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromRGBO(110, 92, 60, 1),
                fontSize: 35,
                fontFamily: 'Roboto Light',
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 5,
              child: Observer(
                builder: (ctx) {
                  final items = _store.listaReportCategories.value;
                  if (_store.loading) {
                    return const ScreenReportTypeLoading();
                  }
                  return buildListView(items!);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
        ],
      ),
      bottomSheet: const FooterApp(),
    );
  }

  ListView buildListView(List<ReportCategoryModel> listType) {
    return ListView.builder(
      itemCount: listType.length,
      itemBuilder: (context, index) {
        ReportCategoryModel reportCategoryModel = listType[index];
        return containerReportType(context, reportCategoryModel);
      },
    );
  }

  Container containerReportType(
      BuildContext context, ReportCategoryModel reportCategoryModel) {
    return Container(
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
            reportCategoryModel.title,
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
            reportCategoryModel.description,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Color.fromRGBO(110, 92, 60, 1),
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                reportCategoryModel.screen,
                arguments: ScreenArguments(
                  reportCategoryModel.title,
                  reportCategoryModel.description,
                  reportType,
                ),
              );
            },
            child: const Text(
              'ACESSAR',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(240, 202, 132, 1),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(110, 92, 60, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.zero,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
