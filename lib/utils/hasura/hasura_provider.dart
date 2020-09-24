import 'package:fliper_teste/consts.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HasuraProvider {
  static HasuraConnect provide() => HasuraConnect(Consts.url, headers: Consts.headers);
}
