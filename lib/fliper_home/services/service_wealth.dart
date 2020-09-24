import 'dart:convert';

import 'package:fliper_teste/fliper_home/models/wealth_data.dart';
import 'package:fliper_teste/utils/hasura/hasura_provider.dart';

class ServiceWealthSummary {
  static Future<WealthData> fetchWealthData() async {
    const query = """
      query MyQuery {
      wealthSummary {
        cdi
        gain
        hasHistory
        id
        profitability
        total
      }
    }""";

    final Object response = await HasuraProvider.provide().query(query);
    return WealthData.fromJson(json.decode(json.encode(response)));
  }
}
