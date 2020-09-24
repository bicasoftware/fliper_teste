import 'package:fliper_teste/fliper_home/models/wealth_summary.dart';
import 'package:intl/intl.dart';

extension WealthSummaryExt on WealthSummary {
  String get totalFormatted => NumberFormat.simpleCurrency(locale: "ptBR").format(total);
  String get gainFormatted => NumberFormat.simpleCurrency(locale: "ptBR").format(gain);
  String get profitabilityFormatted => "${profitability.toStringAsFixed(3)} %";
  String get cdiFormatted => "${cdi.toStringAsFixed(3)} %";
}
