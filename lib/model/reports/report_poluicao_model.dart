import 'dart:convert';

ReportPoluicaoModel reportPoluicaoModelFromJson(String str) =>
    ReportPoluicaoModel.fromJson(json.decode(str));

String reportPoluicaoModelToJson(ReportPoluicaoModel data) =>
    json.encode(data.toJson());

class ReportPoluicaoModel {
  ReportPoluicaoModel({
    required this.ano,
    required this.qtdPoluicao,
    required this.tipo,
    required this.title,
    required this.description,
  });

  int ano;
  double qtdPoluicao;
  String tipo;
  String title;
  String description;

  factory ReportPoluicaoModel.fromJson(Map<String, dynamic> json) =>
      ReportPoluicaoModel(
        ano: json["ano"],
        qtdPoluicao: json["qtdPoluicao"],
        tipo: json["tipo"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "ano": ano,
        "qtdPoluicao": qtdPoluicao,
        "tipo": tipo,
        "title": title,
        "description": description,
      };
}
