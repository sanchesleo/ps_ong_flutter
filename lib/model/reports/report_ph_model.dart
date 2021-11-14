import 'dart:convert';

// ignore: non_constant_identifier_names
ReportPHModel ReportPHModelFromJson(String str) =>
    ReportPHModel.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String ReportPHModelToJson(ReportPHModel data) => json.encode(data.toJson());

class ReportPHModel {
  final int ano;
  final double nivelPh;
  final String title;
  final String description;

  ReportPHModel({
    required this.ano,
    required this.nivelPh,
    required this.title,
    required this.description,
  });

  factory ReportPHModel.fromJson(Map<String, dynamic> json) => ReportPHModel(
        ano: json["ano"],
        nivelPh: json["nivelPh"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "ano": ano,
        "nivelPh": nivelPh,
        "title": title,
        "description": description,
      };
}
