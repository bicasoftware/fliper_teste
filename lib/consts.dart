import 'package:flutter/painting.dart';

class Consts {
  static const String url = "https://harura-fliper-test.herokuapp.com/v1/graphql";
  static const String secret = "fliperdevtest2020";
  static const String hasura_header = "x-hasura-admin-secret";

  static const Map<String, String> headers = {
    "content-type": "application/json",
    "x-hasura-admin-secret": "fliperdevtest2020",
  };

  static const String seuResumo = "Seu resumo";
  static const String valorInvestido = "Valor investido";
  static const String rentabilidade = "Rentabilidade/Mês";
  static const String cdi = "CDI";
  static const String ganho = "Ganho/mês";
  static const String verMais = "Ver mais";
}

class FliperColors {
  static const Color labelTextColor = Color(0xFF606377);
  static const Color accentColor = Color(0xFF3B5CB8);
  static const Color canvasColor = Color(0xFFE8EBF6);
  static const Color dividerColor = Color(0xFF9AA3BC);
}
