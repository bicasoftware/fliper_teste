import 'package:fliper_teste/fliper_home/models/wealth_data.dart';
import 'package:fliper_teste/fliper_home/models/wealth_summary.dart';
import 'package:fliper_teste/utils/bloc/base_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class BlocFliperHome with BaseBloc {
  BlocFliperHome({@required this.wealthData}) {
    _inWealthData.add(wealthData.data.wealthSummary.first);
  }
  final WealthData wealthData;

  final _bhsWealthData = BehaviorSubject<WealthSummary>();
  Stream<WealthSummary> get outWealthData => _bhsWealthData.stream;
  Sink<WealthSummary> get _inWealthData => _bhsWealthData.sink;

  @override
  void dispose() {
    _bhsWealthData.close();
  }
}
