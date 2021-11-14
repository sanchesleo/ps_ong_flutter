import 'package:dio/dio.dart';
import 'package:ps_app_ong/model/reports/report_geleira_model.dart';
import 'package:ps_app_ong/model/reports/report_ph_model.dart';
import 'package:ps_app_ong/model/reports/report_poluicao_model.dart';
import 'package:ps_app_ong/services/services_config.dart';

class ServiceApi {
  static const String _endpoint = 'http://SEUIP:8080/fiap/';

  static const String _resourcePhHistorico = 'ph/historico/report';
  static const String _resourcePhRealTime = 'ph/realtime/report';

  static const String _resourceGeleirasHistorico = 'geleira/historico/report';
  static const String _resourceGeleirasRealTime = 'geleira/realtime/report';

  static const String _resourcePoluicaoHistorico = 'poluicao/historico/report';
  static const String _resourcePoluicaoRealTime = 'poluicao/realtime/report';

  final ServiceConfig _serviceConfig = ServiceConfig(_endpoint);

  Future<List<ReportPHModel>> findAllPhRealtimeReport() async {
    List<ReportPHModel> lista = [];

    try {
      await Future.delayed(
        const Duration(seconds: 3),
      );

      Response response;
      response = await _serviceConfig.create().get(_resourcePhRealTime);

      if (response.statusCode == 200) {
        response.data.forEach((value) {
          lista.add(
            ReportPHModel.fromJson(value),
          );
        });
      }
    } catch (error) {
      print('Service erro: $error');
      throw error;
    }

    return lista;
  }

  Future<List<ReportGeleiraModel>> findAllGeleiraRealtimeReport() async {
    List<ReportGeleiraModel> lista = [];

    try {
      await Future.delayed(
        const Duration(seconds: 3),
      );

      Response response =
          await _serviceConfig.create().get(_resourceGeleirasRealTime);

      if (response.statusCode == 200) {
        response.data.forEach((value) {
          lista.add(
            ReportGeleiraModel.fromJson(value),
          );
        });
      }
    } catch (error) {
      print('Service erro: $error');
      throw error;
    }

    return lista;
  }

  Future<List<ReportPoluicaoModel>> findAllPoluicaoRealtimeReport() async {
    List<ReportPoluicaoModel> lista = [];

    try {
      await Future.delayed(
        Duration(seconds: 3),
      );

      Response response;

      response = await _serviceConfig.create().get(_resourcePoluicaoRealTime);

      if (response.statusCode == 200) {
        response.data.forEach((value) {
          lista.add(
            ReportPoluicaoModel.fromJson(value),
          );
        });
      }
    } catch (error) {
      print('Service erro: $error');
      throw error;
    }

    return lista;
  }

  Future<List<ReportPHModel>> findAllPhHistoricoReport() async {
    List<ReportPHModel> lista = [];

    try {
      await Future.delayed(
        const Duration(seconds: 3),
      );

      Response response;
      response = await _serviceConfig.create().get(_resourcePhHistorico);

      if (response.statusCode == 200) {
        response.data.forEach((value) {
          lista.add(
            ReportPHModel.fromJson(value),
          );
        });
      }
    } catch (error) {
      print('Service erro: $error');
      throw error;
    }

    return lista;
  }

  Future<List<ReportGeleiraModel>> findAllGeleiraHistoricoReport() async {
    List<ReportGeleiraModel> lista = [];

    try {
      await Future.delayed(
        const Duration(seconds: 3),
      );

      Response response =
          await _serviceConfig.create().get(_resourceGeleirasHistorico);

      if (response.statusCode == 200) {
        response.data.forEach((value) {
          lista.add(
            ReportGeleiraModel.fromJson(value),
          );
        });
      }
    } catch (error) {
      print('Service erro: $error');
      throw error;
    }

    return lista;
  }

  Future<List<ReportPoluicaoModel>> findAllPoluicaoHistoricoReport() async {
    List<ReportPoluicaoModel> lista = [];

    try {
      await Future.delayed(
        Duration(seconds: 3),
      );

      Response response;

      response = await _serviceConfig.create().get(_resourcePoluicaoHistorico);

      if (response.statusCode == 200) {
        response.data.forEach((value) {
          lista.add(
            ReportPoluicaoModel.fromJson(value),
          );
        });
      }
    } catch (error) {
      print('Service erro: $error');
      throw error;
    }

    return lista;
  }
}
