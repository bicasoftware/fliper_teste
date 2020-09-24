import 'package:fliper_teste/fliper_home/models/wealth_summary.dart';

class WealthData {
  WealthData({this.data});

  WealthData.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? _Data.fromJson(json['data']) : null;
  }
  _Data data;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class _Data {
  _Data({this.wealthSummary});

  _Data.fromJson(Map<String, dynamic> json) {
    if (json['wealthSummary'] != null) {
      wealthSummary = <WealthSummary>[];
      json['wealthSummary'].forEach((Object v) {
        wealthSummary.add(WealthSummary.fromJson(v));
      });
    }
  }

  List<WealthSummary> wealthSummary;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (wealthSummary != null) {
      data['wealthSummary'] = wealthSummary.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
