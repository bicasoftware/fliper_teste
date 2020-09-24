class WealthSummary {
  WealthSummary({
    this.cdi,
    this.gain,
    this.hasHistory,
    this.id,
    this.profitability,
    this.total,
  });

  WealthSummary.fromJson(Map<String, dynamic> json) {
    cdi = json['cdi'];
    gain = json['gain'];
    hasHistory = json['hasHistory'];
    id = json['id'];
    profitability = json['profitability'];
    total = json['total'];
  }

  double cdi;
  double gain;
  bool hasHistory;
  int id;
  double profitability;
  int total;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cdi'] = cdi;
    data['gain'] = gain;
    data['hasHistory'] = hasHistory;
    data['id'] = id;
    data['profitability'] = profitability;
    data['total'] = total;
    return data;
  }
}
