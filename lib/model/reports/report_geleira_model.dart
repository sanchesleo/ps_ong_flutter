// To parse this JSON data, do
//
//     final reportGeleiraModel = reportGeleiraModelFromJson(jsonString);

import 'dart:convert';

ReportGeleiraModel reportGeleiraModelFromJson(String str) =>
    ReportGeleiraModel.fromJson(json.decode(str));

String reportGeleiraModelToJson(ReportGeleiraModel data) =>
    json.encode(data.toJson());

class ReportGeleiraModel {
  ReportGeleiraModel({
    required this.mes,
    required this.ano,
    required this.qtdGeleira,
    required this.title,
    required this.description,
  });

  int mes;
  int ano;
  int qtdGeleira;
  String title;
  String description;

  factory ReportGeleiraModel.fromJson(Map<String, dynamic> json) =>
      ReportGeleiraModel(
        mes: json["mes"],
        ano: json["ano"],
        qtdGeleira: json["qtdGeleira"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "mes": mes,
        "ano": ano,
        "qtdGeleira": qtdGeleira,
        "title": title,
        "description": description,
      };
}
