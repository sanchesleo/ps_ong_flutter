import 'package:flutter/material.dart';
import 'package:ps_app_ong/screens/login_screen.dart';
import 'package:ps_app_ong/screens/report_categorie_historico_screen.dart';
import 'package:ps_app_ong/screens/report_categorie_realtime_screen.dart';
import 'package:ps_app_ong/screens/report_type_screen.dart';
import 'package:ps_app_ong/screens/reports/historico/report_geleiras_historico_screen.dart';
import 'package:ps_app_ong/screens/reports/historico/report_ph_historico_screen.dart';
import 'package:ps_app_ong/screens/reports/historico/report_poluicao_historico_screen.dart';
import 'package:ps_app_ong/screens/reports/realtime/report_geleiras_realtime_screen.dart';
import 'package:ps_app_ong/screens/reports/realtime/report_ph_realtime_screen.dart';
import 'package:ps_app_ong/screens/reports/realtime/report_poluicao_realtime_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Roboto'),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/report-type': (context) => const ReportTypeScreen(),
        '/report-categorie-realtime': (context) =>
            const ReportCategorieRealtimeScreen(),
        '/report-categorie-historico': (context) =>
            const ReportCategorieHistoricoScreen(),
        '/report-ph-realtime': (context) => const ReportPHRealtimeScreen(),
        '/report-geleiras-realtime': (context) =>
            const ReportGeleiraRealtimeScreen(),
        '/report-poluicao-realtime': (context) =>
            const ReportPoluicaoRealtimeScreen(),
        '/report-ph-historico': (context) => const ReportPHHistoricoScreen(),
        '/report-geleiras-historico': (context) =>
            const ReportGeleiraHistoricoScreen(),
        '/report-poluicao-historico': (context) =>
            const ReportPoluicaoHistoricoScreen(),
      },
    );
  }
}
