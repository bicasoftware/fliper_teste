import 'package:fliper_teste/fliper_home/models/wealth_data.dart';
import 'package:fliper_teste/fliper_home/services/service_wealth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("request", () async {
    final data = await ServiceWealthSummary.fetchWealthData();
    assert(data is WealthData);
  });
}
